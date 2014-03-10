<h3>Example 7 (X/Y variable selector UI)</h3>

<plot height=400 aspect=1.2 title="Trajectories"
      stroke-switch="Fade" stroke="[[['blue',@P{red:grey}]]]"
      select-x="x,y,z" select-y="x,y,z">
  <lines x="[[[sim1.x,sim1.y,sim1.z]]]" y="[[[sim1.x,sim1.y,sim1.z]]]"></lines>
</plot>

<plot height=500 aspect=2 zoom-x title="Time series"
      axis-x-label="Time" axis-y-label="off"
      stroke-switch="Fade" stroke-width=2 legend-switches>
  <lines x="[[sim1.t]]" y="[[sim1.x]]" label="x"
         stroke="[[['orange',@P{orange:grey}]]]"></lines>
  <lines x="[[sim1.t]]" y="[[sim1.y]]" label="y"
         stroke="[[['blue',@P{blue:grey}]]]"></lines>
  <lines x="[[sim1.t]]" y="[[sim1.z]]" label="z"
         stroke="[[['green',@P{green:grey}]]]"></lines>
</plot>
