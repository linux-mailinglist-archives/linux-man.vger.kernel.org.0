Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC51244EE3F
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 21:59:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235676AbhKLVCS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 16:02:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235576AbhKLVCR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 16:02:17 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48345C061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 12:59:26 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id fv9-20020a17090b0e8900b001a6a5ab1392so8607741pjb.1
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 12:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QFq8cY7Q+U2AL5NPyKP49g14jKZkE31jqC1VjI/Sleg=;
        b=Bf2oPpSiRP+NlZV9+sVhjSg+hapAQ2Cjs5FuhV/4DAmNgHD4iODy2y7mhffb4zTGAv
         PwkZe9jscLj1ym9zJrf3EmwlJ0VZ4z65SodacRmGfOfTaf+xS76pHQHI6nRo9ATI9RUf
         pLgmK5SHn1Tii0pdv3F+tZg3xERrMT72D1tVKonMd1UKhOV7sPK2VX41++2SFbfjVnS/
         V7z87ePMtJHKemOMe3h2R8AVVISEX7u1FoKhCyHqpXYqli5C2eaanXU1HZxKkJz5Z4IP
         4DsQxul2MzGD/zYf1ICKt6mDd9IGFdbYWB8Dp69cftMrUHBFRz6wAOn6lXsE5OJTc27R
         MWSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QFq8cY7Q+U2AL5NPyKP49g14jKZkE31jqC1VjI/Sleg=;
        b=4yIWIwKKS1XDb1+8Zwe8LJdg/L6jjw9YKeEKwkPe7i9KGLZZYXvX3h1jK/Q/kaZ5DV
         8DeWtPfAGRhh83OTFLVUQHIXuwJSaojv99H8luMMlJhbEprxjzKVGDQR690EL8GDX8W5
         wnYhcqR2fT7dmNhUyCD6OTaYUv8vnONvfK16UtJNLp4Exnysujzq0Vp048KLm9lgfNSm
         VN1e5vDo3iVyi1turjpjfiA73ZtmZmKmjwmhiJZ/bSlpJdqiBDuAtxRK79bKhn1W2Q8j
         JsNkxN7nN3lydVR0OOLmDflmGk7IsuYiraEAs4vj3Ig/0whIf6yg4l7Ye9FOxiaL/ehv
         BBUg==
X-Gm-Message-State: AOAM532zrTNcgswybgbgekIOy9pbyVLvpByjRyENRmziij8AUBHiNu+M
        gzFQdy+7IOOb2u9SFiVjvdB+hbWqYHY=
X-Google-Smtp-Source: ABdhPJxtDFhC/z8sxW5X0fmymiyVKL5H6iPrT/+/gJn5QUjLIWn22j3tgXwfYXsxFBBdwXwhTkmVkg==
X-Received: by 2002:a17:903:4043:b0:142:4f21:6976 with SMTP id n3-20020a170903404300b001424f216976mr11278227pla.62.1636750765878;
        Fri, 12 Nov 2021 12:59:25 -0800 (PST)
Received: from localhost.localdomain ([1.145.57.118])
        by smtp.gmail.com with ESMTPSA id h3sm11697507pjz.43.2021.11.12.12.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 12:59:25 -0800 (PST)
Date:   Sat, 13 Nov 2021 07:59:22 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] man-pages.7: Update nonbreaking space advice.
Message-ID: <20211112205918.ymmypbzajpyo6avf@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="h4sk3ifsqy74m3pk"
Content-Disposition: inline
X-Mutt-PGP: OS
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--h4sk3ifsqy74m3pk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Taking another crack at this...

---
v2:
 - Stop correcting "nonbreaking" to "non-breaking".
---

* Advise usage of \~ escape instead of \SPACE; the former, a groff
  extension from circa 1990, has been supported by Heirloom Doctools
  troff since 2005 and by mandoc since 2019.  The advantage is that
  \~ is an _adjustable_ non-breaking space, so it will typeset
  non-jarringly both in .EX/.EE examples when filling is off, and in
  normal running text (which is filled).

See linux-man@ list discussion at
<https://lore.kernel.org/linux-man/\
20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain/> and follow-ups.
---
 man7/man-pages.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 96c3deb20..23015b00a 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -689,7 +689,7 @@ If the command is short, then it can be included inline=
 in the text,
 in italic format, for example,
 .IR "man 7 man-pages" .
 In this case, it may be worth using nonbreaking spaces
-("\e\ ") at suitable places in the command.
+(\e\(ti) at suitable places in the command.
 Command options should be written in italics (e.g.,
 .IR \-l ).
 .PP
--=20
2.20.1


--h4sk3ifsqy74m3pk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmGO1Z0ACgkQ0Z6cfXEm
bc7mWA//dLpOG7ac786J5QsqVNCS8MGlqfYpnBqda/6hOS7uSROJ2aH9WTeHXY73
ehXjgZOF9DFCwnBW6zZDThVg17/FEr87IKZMe6DKZC/426b16E9VWGuRfym0QQCO
CJRVHD3Z1u99JAEKS9uiFoKSqOiT1kcfxUb/ooYLeh0oJA+FDlo6z6XkT6sw0Yt8
pY5nkOGw6plIVvX5H30enaiRBK9HLV8muf3h80C2N6NGq11KmflfgDc7K89Fqj1o
2yzqQhDA2XRswB7qtgnnmIwner5uiIewOj65cOZc15QNqHbhJkA+4d0ZKXqCTcxz
HvFdlWMuIYjXvYvQ8D4oZMYCNQWaapg71IMZNPW5MMDasccHhB3HlKHRWgCxW6gT
rUUj0kaO2hKEGbpFa+b20Je+2+hSBrSF2fCnPr7pE0OVBxSdimCHJZ5fcRIwbcZb
qpyleYT6f4kTe9Gbgdb3aX2YypY7HJVf9OWiUEYSag+zbOwnsoGYdzcjTqTzSSYl
pzYLIet2hv9W44gY8ztmOgEJpzvgMmm2iVdnwNYhtUDEop/mpaSCpwZQV/Fekr9e
z0aSqiGBe/23V3h2LUXBTZcpl52pkf+gQTXB9HjQgFV7gqsqgan3bpRllOykaF7K
oPoI4+xUX9+3OtX+jc0umiGXuSaLeVXYZMV4kXCpyZRDHSn0IBY=
=IaaV
-----END PGP SIGNATURE-----

--h4sk3ifsqy74m3pk--
