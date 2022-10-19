Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29949604623
	for <lists+linux-man@lfdr.de>; Wed, 19 Oct 2022 15:00:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230097AbiJSM76 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Oct 2022 08:59:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233746AbiJSM71 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Oct 2022 08:59:27 -0400
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6100B120EF7
        for <linux-man@vger.kernel.org>; Wed, 19 Oct 2022 05:43:12 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id CFDBC240027
        for <linux-man@vger.kernel.org>; Wed, 19 Oct 2022 14:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
        t=1666182331; bh=M294TEIK3IZRHnNP6YZ73q3671boR1V1QEn6WEZ8hmA=;
        h=Subject:From:To:Cc:Date:From;
        b=gSHiUq/ocDdqykaVHZedUPvrbUmE5JsSfBM83arveVMc7qrYAdoMdVwDqaEw1uiIG
         Vf7vSr6KqdcPB+n1yJYmaAKbfws026M8L32126ScP9Tu2SoshyKjTyKmeIpjYJTx29
         ef2mkhFwQdAZzjo7LSwG0fk7cd/CAo/VzL+G5VrxZhfvi8xhVIuA1BZfec6iwoDxZ7
         eemRE2iSg/Os717/BXg0aKzuKh0VvNqSPauel+24vfD95PAjBoXlG+8jfon0AOHNoa
         gIHIyxlVgxzQTlKBOfqc6xbZwHDfvpJaM/PnD/xzWldlI5pilx+hb3S+Vo+qEd38wA
         06Uod0S7/FwTQ==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4Msqgt5Srhz6tmd;
        Wed, 19 Oct 2022 14:25:30 +0200 (CEST)
Message-ID: <9514ccd17ebc5fed7b685e4e163e725148176972.camel@posteo.net>
Subject: [PATCH] Remove any mention of feature test macro requirements for
 mmap()
From:   John Scott <jscott@posteo.net>
To:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Date:   Wed, 19 Oct 2022 12:25:23 +0000
Jabber-ID: pert@member.fsf.org
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-RfJMHRdp0F97JOvR2NbH"
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--=-RfJMHRdp0F97JOvR2NbH
Content-Type: multipart/mixed; boundary="=-nxVx9IJO5SHYLNZfMp9Y"

--=-nxVx9IJO5SHYLNZfMp9Y
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm not subscribed, please CC me.

glibc doesn't require _GNU_SOURCE to expose certain MAP_* constants
anymore (MAP_ANONYMOUS being particularly noteworthy among them for
being on track for POSIX Issue 8). See this commit:
https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3D954b8f38958de72c47=
12088735eb175118f17b51

or my glibc bug report which triggered the change at
https://sourceware.org/bugzilla/show_bug.cgi?id=3D29375

This is because POSIX reserves MAP_ constants to the implementation, so
their unconditional visibility in sys/mman.h is always allowed. This is
also helpful for portable application writers.

Other C libraries like musl already exhibit this behavior.

Because mmap() is in a POSIX-specific header already, using it with any
combination of MAP_ constants doesn't require feature test macros.

Thanks for your consideration

--=-nxVx9IJO5SHYLNZfMp9Y
Content-Description:
Content-Disposition: inline;
	filename*0=0001-Remove-any-feature-test-macro-requirements-for-mmap.patc;
	filename*1=h
Content-Type: text/x-patch;
	name="0001-Remove-any-feature-test-macro-requirements-for-mmap.patch";
	charset="UTF-8"
Content-Transfer-Encoding: base64

RnJvbSA0NzYzMjg4ODYyN2NhYzNkMDU0N2E5NjljNTVkMzg0OGIzYjM1MGI3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKb2huIFNjb3R0IDxqc2NvdHRAcG9zdGVvLm5ldD4KRGF0ZTog
V2VkLCAxOSBPY3QgMjAyMiAwNjoyNToyNSAtMDQwMApTdWJqZWN0OiBbUEFUQ0hdIFJlbW92ZSBh
bnkgZmVhdHVyZSB0ZXN0IG1hY3JvIHJlcXVpcmVtZW50cyBmb3IgbW1hcCgpCgpObyBmZWF0dXJl
IHRlc3QgbWFjcm9zIGFyZSByZXF1aXJlZCBhbnltb3JlLCBub3QgZXZlbgp0byBleHBvc2UgY2Vy
dGFpbiBjb25zdGFudHMuIFNlZQpodHRwczovL3NvdXJjZXdhcmUub3JnL2J1Z3ppbGxhL3Nob3df
YnVnLmNnaT9pZD0yOTM3NQotLS0KIG1hbjIvbW1hcC4yIHwgMzUgLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzNSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9tYW4yL21tYXAuMiBiL21hbjIvbW1hcC4yCmluZGV4IDljMzQzZjIuLjhhMmJkZGYg
MTAwNjQ0Ci0tLSBhL21hbjIvbW1hcC4yCisrKyBiL21hbjIvbW1hcC4yCkBAIC0zMiw4ICszMiw2
IEBAIFN0YW5kYXJkIEMgbGlicmFyeQogLkJJICIgICAgICAgICAgIGludCAiIGZkICIsIG9mZl90
ICIgb2Zmc2V0ICk7CiAuQkkgImludCBtdW5tYXAodm9pZCAqIiBhZGRyICIsIHNpemVfdCAiIGxl
bmd0aCApOwogLmZpCi0uUFAKLVNlZSBOT1RFUyBmb3IgaW5mb3JtYXRpb24gb24gZmVhdHVyZSB0
ZXN0IG1hY3JvIHJlcXVpcmVtZW50cy4KIC5TSCBERVNDUklQVElPTgogLkJSIG1tYXAgKCkKIGNy
ZWF0ZXMgYSBuZXcgbWFwcGluZyBpbiB0aGUgdmlydHVhbCBhZGRyZXNzIHNwYWNlIG9mCkBAIC03
MjcsMzkgKzcyNSw2IEBAIGZsYWcgaXMgc3BlY2lmaWVkLCBhbmQKIC5JIGFkZHIKIGlzIDAgKE5V
TEwpLCB0aGVuIHRoZSBtYXBwZWQgYWRkcmVzcyB3aWxsIGJlIDAgKE5VTEwpLgogLlBQCi1DZXJ0
YWluCi0uSSBmbGFncwotY29uc3RhbnRzIGFyZSBkZWZpbmVkIG9ubHkgaWYgc3VpdGFibGUgZmVh
dHVyZSB0ZXN0IG1hY3JvcyBhcmUgZGVmaW5lZAotKHBvc3NpYmx5IGJ5IGRlZmF1bHQpOgotLkIg
X0RFRkFVTFRfU09VUkNFCi13aXRoIGdsaWJjIDIuMTkgb3IgbGF0ZXI7Ci1vcgotLkIgX0JTRF9T
T1VSQ0UKLW9yCi0uQiBfU1ZJRF9TT1VSQ0UKLWluIGdsaWJjIDIuMTkgYW5kIGVhcmxpZXIuCi0o
RW1wbG95aW5nCi0uQiBfR05VX1NPVVJDRQotYWxzbyBzdWZmaWNlcywKLWFuZCByZXF1aXJpbmcg
dGhhdCBtYWNybyBzcGVjaWZpY2FsbHkgd291bGQgaGF2ZSBiZWVuIG1vcmUgbG9naWNhbCwKLXNp
bmNlIHRoZXNlIGZsYWdzIGFyZSBhbGwgTGludXgtc3BlY2lmaWMuKQotVGhlIHJlbGV2YW50IGZs
YWdzIGFyZToKLS5CUiBNQVBfMzJCSVQgLAotLkIgTUFQX0FOT05ZTU9VUwotKGFuZCB0aGUgc3lu
b255bQotLkJSIE1BUF9BTk9OICksCi0uQlIgTUFQX0RFTllXUklURSAsCi0uQlIgTUFQX0VYRUNV
VEFCTEUgLAotLkJSIE1BUF9GSUxFICwKLS5CUiBNQVBfR1JPV1NET1dOICwKLS5CUiBNQVBfSFVH
RVRMQiAsCi0uQlIgTUFQX0xPQ0tFRCAsCi0uQlIgTUFQX05PTkJMT0NLICwKLS5CUiBNQVBfTk9S
RVNFUlZFICwKLS5CUiBNQVBfUE9QVUxBVEUgLAotYW5kCi0uQlIgTUFQX1NUQUNLIC4KLS5QUAog
QW4gYXBwbGljYXRpb24gY2FuIGRldGVybWluZSB3aGljaCBwYWdlcyBvZiBhIG1hcHBpbmcgYXJl
CiBjdXJyZW50bHkgcmVzaWRlbnQgaW4gdGhlIGJ1ZmZlci9wYWdlIGNhY2hlIHVzaW5nCiAuQlIg
bWluY29yZSAoMikuCi0tIAoyLjM1LjEKCg==


--=-nxVx9IJO5SHYLNZfMp9Y--

--=-RfJMHRdp0F97JOvR2NbH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIgEABYIADAWIQSiPzylvTnZ6xisfzWz9N0oYfTNugUCY0/stBIcanNjb3R0QHBv
c3Rlby5uZXQACgkQs/TdKGH0zbobiwEAzSe8mwl5Vr9K57VqJRNxBIVK4O8dZEfD
mA4jwj/71m4A/RY7WUG5hmUjXno9+K+0NViJNLSqHvL6k8wUHORufmQB
=75gL
-----END PGP SIGNATURE-----

--=-RfJMHRdp0F97JOvR2NbH--
