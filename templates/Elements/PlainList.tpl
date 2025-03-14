<!-- Checkboxes. All three cases must be defined. -->
<bind tag="Checkbox:true">
  <code>[X]</code>
</bind>
<bind tag="Checkbox:false">
  <code>[ ]</code>
</bind>
<bind tag="Checkbox:partial">
  <code>[-]</code>
</bind>

<!-- Plain list types. All three cases must be defined. -->

<bind tag="PlainList:unordered">
  <bind tag="Bullet:-">disk</bind>
  <bind tag="Bullet:+">square</bind>
  <bind tag="Bullet:*">circle</bind>

  <ul type="${Bullet}">
    <ListItems>
      <li>
        <Checkbox />
        <Contents />
      </li>
    </ListItems>
  </ul>
</bind>

<bind tag="PlainList:ordered">
  <bind tag="Counter:num">1</bind>
  <bind tag="Counter:alpha">a</bind>

  <ol type="${Counter}">
    <ListItems>
      <li value="${CounterSet}">
        <Checkbox />
        <Contents />
      </li>
    </ListItems>
  </ol>
</bind>

<bind tag="PlainList:descriptive">
  <dl>
    <ListItems>
      <dt><Checkbox /><Tag /></dt>
      <dd><Contents /></dd>
    </ListItems>
  </dl>
</bind>

<!-- Here is where the actual rendering takes place. During rendering
     PlainList is replaced by the corresponding type defined above. -->

<WithAffiliated>
  <PlainList />
</WithAffiliated>
