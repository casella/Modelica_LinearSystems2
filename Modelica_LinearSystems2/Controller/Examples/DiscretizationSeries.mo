within Modelica_LinearSystems2.Controller.Examples;
model DiscretizationSeries
  "Demonstrates the discretization methods for a series connection"
  extends Modelica.Icons.Example;

  parameter Types.BlockType blockType=Modelica_LinearSystems2.Controller.Types.BlockType.Continuous
    "Type of Sampled blocks (Continuous or Discrete)";
  parameter Modelica.SIunits.Time sampleTime=0.1
    "Base sample time for discrete blocks";
  parameter Modelica.SIunits.Time T1=0.2 "Time constant of first PT1 block";
  parameter Modelica.SIunits.Time T2=0.15 "Time constant of second PT1 block";

  Components.SeriesConnection continuous(
    T1=T1,
    T2=T2,
    blockType=Modelica_LinearSystems2.Controller.Types.BlockType.Continuous)
    annotation (Placement(transformation(extent={{-40,60},{-20,80}})));
  Components.SeriesConnection trapezoidal(
    T1=T1,
    T2=T2,
    blockType=Modelica_LinearSystems2.Controller.Types.BlockType.Discrete,
    methodType=Modelica_LinearSystems2.Utilities.Types.Method.Trapezoidal,
    sampleTime=sampleTime) annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
  Components.SeriesConnection rampExact(
    T1=T1,
    T2=T2,
    blockType=Modelica_LinearSystems2.Controller.Types.BlockType.Discrete,
    methodType=Modelica_LinearSystems2.Utilities.Types.Method.RampExact,
    sampleTime=sampleTime) annotation (Placement(transformation(extent={{-40,-60},{-20,-40}})));
  Components.SeriesConnection stepExact(
    T1=T1,
    T2=T2,
    blockType=Modelica_LinearSystems2.Controller.Types.BlockType.Discrete,
    methodType=Modelica_LinearSystems2.Utilities.Types.Method.StepExact,
    sampleTime=sampleTime) annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));

  annotation ( Documentation(info="<html>
<p>
Demonstrates the different discretization methods by simulating the step
response of a second order system as continuous system and as discrete system
with the supported discretization methods. The step starts with an offset at 0.1 s
to demonstrate the steady-state initialization.
</p>
</html>"),
    experiment(StopTime=1.5));
end DiscretizationSeries;
