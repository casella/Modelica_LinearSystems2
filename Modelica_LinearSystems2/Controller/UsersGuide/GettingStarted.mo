within Modelica_LinearSystems2.Controller.UsersGuide;
class GettingStarted "Getting started"

  annotation (Documentation(info="<html>
<p>
The <b>Controller</b> package provides input/output blocks where every
block is available in a <b>continuous</b> and a <b>discrete</b> (sampled)
representation. A block is defined via its <b>continuous
parameterization</b>. By specifying a discretization method and
a sample time, the discrete representation is automatically
derived from the continuous form.
</p>

<p>
The advantage is that, e.g.,
the continuous representation of a controller is used in
detailed non-linear models of a plant. Since the controller is
continuous, the simulation is usually much faster because
the step size is not constrained by the sample period of the
controller. For evaluation and fine tuning purposes, a more
detailed representation can be used by switching to its
discrete form and adding additional effects such as AD/DA
converter, noise, computing delay, etc.
</p>

<p>
The defaults of the most
important options, such as block type (Continuous/Discrete)
or base sample time for <b>all blocks</b> are set in the
global SampleClock component (via inner/outer).
As a result, it is, e.g., easy to switch quickly
between a continuous and a discrete representation of all
blocks of a controller, by setting the option in the
sampleClock component.
</p>

<p>
Examples to demonstrate the technique are given in sublibrary
<a href=\"modelica://Modelica_LinearSystems2.Controller.Examples\">Examples</a>.
Especially, the continuous or discrete control of a simple flexible
drive with a P-PI cascade controller is demonstrated in example
<a href=\"modelica://Modelica_LinearSystems2.Controller.Examples.SimpleControlledDrive\">SimpleControlledDrive</a>.
</p>

<p>
A screen shot of the diagram layer is shown in the next figure:
</p>

<p align=\"center\">
<img src=\"modelica://Modelica_LinearSystems2/Resources/Images/UsersGuide/Sampled1.png\">
</p>

<p>
Every block has a continuous input and a continuous output.
The block might be sampled with the base sampling period defined
in sampleClock or with an Integer multiple of it. For example,
the PI controller in the above example has the following
parameter menus:
</p>

<p align=\"center\">
<img src=\"modelica://Modelica_LinearSystems2/Resources/Images/UsersGuide/Sampled2.png\">
</p>

<p align=\"center\">
<img src=\"modelica://Modelica_LinearSystems2/Resources/Images/UsersGuide/Sampled3.png\">
</p>

<p>
By setting, e.g., parameters blockType to &quot;Discrete&quot; and
sampleFactor to 10 in the &quot;Advanced&quot; menu, results
in a block where the input and the output of the block
is sampled by a sampling time that is 10 times slower
as the base sample time of the global sampleClock component.
</p>
</html>"));
end GettingStarted;
