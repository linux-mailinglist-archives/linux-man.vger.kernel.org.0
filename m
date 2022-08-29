Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 978EC5A5668
	for <lists+linux-man@lfdr.de>; Mon, 29 Aug 2022 23:46:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbiH2Vqw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Aug 2022 17:46:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbiH2Vqv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Aug 2022 17:46:51 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B4A8185F81
        for <linux-man@vger.kernel.org>; Mon, 29 Aug 2022 14:46:49 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8163D1E70;
        Mon, 29 Aug 2022 23:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1661809606;
        bh=BkaG7rc1TQCoY7bkAdOe6Y1ckBNRiTfF9gwd/FUgCXM=;
        h=Date:From:To:Cc:Subject:From;
        b=oWOkAJQ377VOLFUVTiFpLuOsxP9mvKALyptBppr1W12Mk9aOYUP28PsIZ/oRXE5zx
         j3hCqHBwL+wxET1FAKdE6NA6gNjMTRpisKktfi00/rtPzZN4lcmx3JmNZ3+5FRPQ+G
         cm+cHaag7pYvHhGpVOAkIihawCJZ4y2hz+Y2DuFLSH2j5MoJ1HKY8cXVJV8xwXevuA
         gpCxuDG7hwbrwOk2ojVB+djaXdB7ac/PBj4CoD9nXjvY2ysndolwko5iqgEFQoiSU4
         IlbT1/jcGL/ELbyLaTVnQC0/kibX94e9DxLmvmNpBveeCaIC0QH44WjyB6PqAOUx+Y
         isMfFLfzqyd29XWMwTzDDE5QOa5VYVnkhNbj0YVx/BBfXW09fl+q1YVfigQwSmStGV
         V3YwJh+oFzzCir8QliDmzKstzjMHkMRu5hCcYvcZROlk/AT3AlMdZ7T3fVeJNz8qVp
         LMnrF9h+am6koF+d/zTcRmgJ18JlmsZRdk1uLtZwgwZoQPUeXiwE9wlz6YZ9mC0JI1
         mlfPKvPdioEh3mbExG/K2hN4DXW/wuWKEAkiD905T2AeX/EHwPRmuiT4nCiYNKemr3
         K7XY1lgacJjMaIeUXGpfGkbYYAkHjY9KmwFCryCScpSPVpT23ur+OhdPQXnqy4WgLS
         /Ns4q7WKya97iGWj6PGICbts=
Date:   Mon, 29 Aug 2022 23:46:45 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] cc_t.3type, speed_t.3type, tcflag_t.3type: document all
 together
Message-ID: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fhmyi7o6ge7icaqw"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fhmyi7o6ge7icaqw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

speed_t and tcflag_t were both unmentioned in general

Issue 7 has this to say:
  The <termios.h> header shall define the following data types through type=
def:
    cc_t     Used for terminal special characters.
    speed_t  Used for terminal baud rates.
    tcflag_t Used for terminal modes.
  The above types shall be all unsigned integer types.
---
 man3type/cc_t.3type     | 14 +++++++++++---
 man3type/speed_t.3type  |  1 +
 man3type/tcflag_t.3type |  1 +
 3 files changed, 13 insertions(+), 3 deletions(-)
 create mode 100644 man3type/speed_t.3type
 create mode 100644 man3type/tcflag_t.3type

diff --git a/man3type/cc_t.3type b/man3type/cc_t.3type
index 029cf945c..0afdd2cd0 100644
--- a/man3type/cc_t.3type
+++ b/man3type/cc_t.3type
@@ -6,7 +6,7 @@
 .\"
 .TH CC_T 3type 2021-11-02 "Linux man-pages (unreleased)"
 .SH NAME
-cc_t \- terminal special characters
+cc_t, speed_t, tcflag_t \- terminal special characters, baud rates, modes
 .SH LIBRARY
 Standard C library
 .RI ( libc )
@@ -15,10 +15,18 @@ Standard C library
 .B #include <termios.h>
 .PP
 .BR typedef " /* ... */ " cc_t;
+.BR typedef " /* ... */ " speed_t;
+.BR typedef " /* ... */ " tcflag_t;
 .fi
 .SH DESCRIPTION
-Used for terminal special characters.
-It is an unsigned integer type.
+.B cc_t
+is used for terminal special characters,
+.B speed_t
+\(em baud rates, and
+.B tcflag_t
+\(em modes.
+.PP
+All are unsigned integer types.
 .SH STANDARDS
 POSIX.1-2001 and later.
 .SH SEE ALSO
diff --git a/man3type/speed_t.3type b/man3type/speed_t.3type
new file mode 100644
index 000000000..26cfd0171
--- /dev/null
+++ b/man3type/speed_t.3type
@@ -0,0 +1 @@
+.so man3type/cc_t.3type
diff --git a/man3type/tcflag_t.3type b/man3type/tcflag_t.3type
new file mode 100644
index 000000000..26cfd0171
--- /dev/null
+++ b/man3type/tcflag_t.3type
@@ -0,0 +1 @@
+.so man3type/cc_t.3type
--=20
2.30.2


--fhmyi7o6ge7icaqw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmMNM8UACgkQvP0LAY0m
WPHl/w/9GePtwMjucrE6lhNtTNSzJHhqs0PzvcXBQKFppYgzhNAUQBnx7I0Yedhm
HkLU+MxCUnj8aaYp7/8m3gE+2CGXZEsfqYgu+jMU84n58/fckYu5N8tymPgvk+e6
VqwF7BS0Xk62b13KEiIxEoFPt2ewCC3Cf+GvImh+T8RuLV4LQ4z29Nd+RHNs9QHk
G3DVIU64CpZoTvxaEeFv7T2tm/GAhWYrp23xg8ImnhKsQ3QVJqpo6cglNypuSbTX
/lc90uCUiFN9MCtVK70mYcSfRdm1/m4CWtKIZHNOWttYSUixsap9ojGWmSfM2n0J
eR+pCkgrPWzRYJpZe9fRT3j2PPqOnadrCR2bpgQvT6onugTBsTI2D2jN2k7aiG+0
P4ljspUyybsdQ5TkeWWuMfbz9LJJCplyxg6AO9pkMYErihWN53ltut3ACQ5A1V2M
YXwfSds7CIPNcAuNGDC7f/NsZdMfr2SFLikmKiPCO8guu+ShxdwFQuqSK4TDN9wS
HrjVGID4CEu/PoliGMaNuTmGTTkZVZBTh179nNchFvf30tMfjBRfGAGXifNOEJb4
cJCkjloc/vNujNrn2byM3EeBGjs2xxJn67Q+aLcsJVmt2RbADltVzyPvby7+eyEx
babqDhSAsQJbMhOxneqCvPDSkFVG8wggy+jXS65qFvJC3CJlDyM=
=7Rtk
-----END PGP SIGNATURE-----

--fhmyi7o6ge7icaqw--
