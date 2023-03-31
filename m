Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20D996D2AE0
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 00:05:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231159AbjCaWFB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 18:05:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233153AbjCaWFA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 18:05:00 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 05FBA20DA2
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:04:59 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 520F84EAA;
        Sat,  1 Apr 2023 00:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1680300298;
        bh=K/7GXJifi1lRn75yJ9rA0Ys+ZLpfMgSw0pPy4sNI/9w=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pAEiK7F/twVL06rZmVIfKauXfhUWAPi+qgDNwhQK9Llma0WYyszodO4OaBx/fLrf1
         ibU0L6sxiSDgfGJH+e+ASjlIFSlm79Z1vJgyNlna1cB0K6EOd3Sa/zM015DQ9msdwc
         IiZWMZ6BjsjjABgOxVTGQj53pI0cfyzWWQ/njarR74o7FNtR+oWMlP9vBdkBe7UAS1
         RMO6koL7Vq0oV+NxoOhDAShZQKqYgNm0nQ/+zkkycGVVV59u/UinHhfVUvwuuomy2Q
         s1IBCS5ywM/pnNJaqCgjve1pTmQG1gHVyoA13hlulcr5T48O7c7JjB7LZkmn0AfGNE
         jWFaGrhSxBucw==
Date:   Sat, 1 Apr 2023 00:04:57 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH 2/2] sysctl.7: create as .so man5/proc.5
Message-ID: <5d8c054990e567bdc9a4745c63eacedee4f22c97.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="4kfuhgtki43fynna"
Content-Disposition: inline
In-Reply-To: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
User-Agent: NeoMutt/20230322
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,
        SPF_HELO_PASS,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4kfuhgtki43fynna
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This way "whatis sysctl" shows the list of sysctls and documentation,
in addition to the syscall and program. Indeed, the latter two aren't
all that useful without the former.

Not a single concrete file, and it's more of an interface =3D> goes in 7.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/sysctl.7 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man7/sysctl.7

diff --git a/man7/sysctl.7 b/man7/sysctl.7
new file mode 100644
index 000000000..d8be74ac8
--- /dev/null
+++ b/man7/sysctl.7
@@ -0,0 +1 @@
+.so man5/proc.5
--=20
2.30.2

--4kfuhgtki43fynna
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmQnWQgACgkQvP0LAY0m
WPHprw/9HCFQX1UiIMcMD0IqzofcUS+6t3tvBMo3Xge326NFUq2ofZZzIPgS7b/z
WvL5IQGKMhgtPw2iomaaDJkpR0XUxlRNd+pgrhFsaiUo1Nnk0SiV7XBncb98ANif
GmOU9tixHZHR2+52IcZXOmhQ9Uzio1//Q0DJ360F0aIjcGFUaHeNbZVjlV4GXH4m
GaqSvwRURvLhBPXJpV4rQLRZFG1tVn7HQ/Dj004ML1FRF0rgC0HQHsjK+ANlfKSL
wDoO8zOq1tJplGRIp3zCB953QP2ANdNtErXZMlcyxe6JucEVVak0e4Dc6EwGSj1k
HPjofOpV5EofJt4cvDS+E0Y/y7vSRXB5PuxU6pfy2Sn5S3BJOIGzsl2yQ1tckvn0
CftL7bogYqo+pi+zc1PtNB7VkE4JPVl6nEBo9H8z3jfY0PsHOQ1jBDatIhacx5Ow
9HZSKPP35Smp33/+t+ddfK3utrhIwHBBbosjTLxaOPDzh0buepUjhZlonrRkgn0i
TDqusQf6cjiU74qEmdLmx8RzSVmthdKDma7jBVWiAZdoChWivM9mDgjpXl7WiaGZ
YQeOeTrVw71TOosQw2IHtCImKvezP2dIcRMIzlHxCJFw5O3WC8WxlAWR+DxzBpBJ
UATaHu5IrTDJ7Gu/XAGry+ZC67GgSHeYE0WuRdd+z78ZQEY4u3c=
=BTTB
-----END PGP SIGNATURE-----

--4kfuhgtki43fynna--
