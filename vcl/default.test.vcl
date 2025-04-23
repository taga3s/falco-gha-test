sub test_vcl_recv {
  testing.call_subroutine("vcl_recv");
  assert.equal(req.http.Foo, "foo");
}

sub test_vcl_error {
  testing.call_subroutine("vcl_error");
  assert.equal(req.http.Bar, "bar");
}
