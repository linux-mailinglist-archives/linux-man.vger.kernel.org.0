Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07E05690FEE
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:09:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229696AbjBISJD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:09:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229625AbjBISJC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:09:02 -0500
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D957E60D7D
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:09:01 -0800 (PST)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-16ab8581837so3518678fac.4
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m9W/LmHt197x71LRbTaZ2xhl9nReQljjoxsHSR/kdpg=;
        b=ViU8zdMgr5/z6Sj5a0k/0HEyLP3zRCsxxEv0KlJGgt91IJjfrrgFgpx96XL9i8DJxD
         csaxGc046+K6wyW+pjk6J3HnmxGy2jPDqgDtSF+4JFed+gw7bHrZ4qhlQaOU4TwDqsN2
         rhoPk0bUtRa+C0hvPiYAsqozE/3T2lGM4PwkfKl1YSoA1mn9AeqZV/5ufFVzUMGPmXtP
         PJKj9vDwJqd3wwzcxfdBBuKB+4VbFLQkl81vTTfaYbIvmjWzCvU8HVoTrJnW4d1fcgH7
         /5CaZuvZcZcNgSCjV8uqwuSrwsrK1Z570cSHFJ2W+Ll6ctkfvVXaXcGcKzF/x2YLaVkx
         6JFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m9W/LmHt197x71LRbTaZ2xhl9nReQljjoxsHSR/kdpg=;
        b=CPqXUVYdIzjyTh2rHXXYTnCm2xlRlhUDUlPpk5gykzs6jym7rZzGPQdghbIaP+ieBo
         i+ygjkL42/1hu24n+fOsIDxQq5ocFCLnvNh2MQ4HoI1zIAbToU2KeW0gDOeVbVEfO+b9
         4LUl8j78aEHzBJua5BvFXRGUkkGxAxWrHYyu1vTc15kqq05vJKe4hEvKBepASsmAkgw3
         WwNIYELczBcYuuo2hlWCwoXaDoespLT2KfNRNS+CHxGlNr0NOYfcERv3yB2WQQlZd4g9
         G11hmtJm3zq2Zg/O5MmGNE+NHvMm0C/arqxOWqDWWFDkVntRU8Z/xbNegN1MzX+x37hP
         1zmA==
X-Gm-Message-State: AO0yUKWgf2w17wqA80q6T8+edgGjxfifyAUdG//VNH/PLCvXxA2OZnhg
        A80h7rKUZHNIQKRklS1pKk40LC5Cwuw=
X-Google-Smtp-Source: AK7set/CpsQuKZx9TtS0q7SbLP9SjQrQtpprHzKQVVWcbdQhrQpQ79LADNjuUW/DnIRrVyWIC2JtiA==
X-Received: by 2002:a05:6870:4391:b0:15f:835:82e7 with SMTP id r17-20020a056870439100b0015f083582e7mr7083275oah.14.1675966141097;
        Thu, 09 Feb 2023 10:09:01 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x4-20020a056870740400b00163ac4f1acasm987392oam.10.2023.02.09.10.09.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:09:00 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:08:59 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 01/20] many pages: srcfix (hyphens used as C operators)
Message-ID: <20230209180859.xyihlkanuf6hqikn@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6dra5d4wu6xlpcda"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6dra5d4wu6xlpcda
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Escape hyphens used as parts of C `->` operators.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/landlock_add_rule.2       |  4 ++--
 man2/landlock_create_ruleset.2 |  2 +-
 man2/mount_setattr.2           |  8 ++++----
 man2/perfmonctl.2              |  2 +-
 man2/seccomp_unotify.2         | 14 +++++++-------
 man2/sigaction.2               |  4 ++--
 6 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/man2/landlock_add_rule.2 b/man2/landlock_add_rule.2
index 4c37bafac..871621348 100644
--- a/man2/landlock_add_rule.2
+++ b/man2/landlock_add_rule.2
@@ -89,12 +89,12 @@ Landlock is supported by the kernel but disabled at boo=
t time.
 .B EINVAL
 .I flags
 is not 0, or the rule accesses are inconsistent (i.e.,
-.I rule_attr->allowed_access
+.I rule_attr\->allowed_access
 is not a subset of the ruleset handled accesses).
 .TP
 .B ENOMSG
 Empty accesses (i.e.,
-.I rule_attr->allowed_access
+.I rule_attr\->allowed_access
 is 0).
 .TP
 .B EBADF
diff --git a/man2/landlock_create_ruleset.2 b/man2/landlock_create_ruleset.2
index ac79ab788..8c83813ec 100644
--- a/man2/landlock_create_ruleset.2
+++ b/man2/landlock_create_ruleset.2
@@ -109,7 +109,7 @@ was not a valid address.
 .TP
 .B ENOMSG
 Empty accesses (i.e.,
-.I attr->handled_access_fs
+.I attr\->handled_access_fs
 is 0).
 .SH VERSIONS
 Landlock was added in Linux 5.13.
diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index d233fa51f..30e878916 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -174,21 +174,21 @@ are equivalent to the following steps:
 .PP
 .in +4n
 .EX
-unsigned int current_mnt_flags =3D mnt->mnt_flags;
+unsigned int current_mnt_flags =3D mnt\->mnt_flags;
=20
 /*
  * Clear all flags set in .attr_clr,
  * clearing MOUNT_ATTR_NOEXEC and MOUNT_ATTR_NODEV.
  */
-current_mnt_flags &=3D ~attr->attr_clr;
+current_mnt_flags &=3D \(tiattr\->attr_clr;
=20
 /*
  * Now set all flags set in .attr_set,
  * applying MOUNT_ATTR_RDONLY and MOUNT_ATTR_NOSUID.
  */
-current_mnt_flags |=3D attr->attr_set;
+current_mnt_flags |=3D attr\->attr_set;
=20
-mnt->mnt_flags =3D current_mnt_flags;
+mnt\->mnt_flags =3D current_mnt_flags;
 .EE
 .in
 .PP
diff --git a/man2/perfmonctl.2 b/man2/perfmonctl.2
index 7f32b777e..1adbba492 100644
--- a/man2/perfmonctl.2
+++ b/man2/perfmonctl.2
@@ -51,7 +51,7 @@ The
 parameter is ignored.
 A new perfmon context is created as specified in
 .I ctxt
-and its file descriptor is returned in \fIctxt->ctx_fd\fR.
+and its file descriptor is returned in \fIctxt\->ctx_fd\fR.
 .IP
 The file descriptor can be used in subsequent calls to
 .BR perfmonctl ()
diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
index ff5f23f6c..94bbf2b27 100644
--- a/man2/seccomp_unotify.2
+++ b/man2/seccomp_unotify.2
@@ -848,11 +848,11 @@ operation (here, to emulate a call to
 .in +4n
 int fd, removeFd;
=20
-fd =3D openat(req->data.args[0], path, req->data.args[2],
-                req->data.args[3]);
+fd =3D openat(req\->data.args[0], path, req\->data.args[2],
+                req\->data.args[3]);
=20
 struct seccomp_notif_addfd addfd;
-addfd.id =3D req->id; /* Cookie from SECCOMP_IOCTL_NOTIF_RECV */
+addfd.id =3D req\->id; /* Cookie from SECCOMP_IOCTL_NOTIF_RECV */
 addfd.srcfd =3D fd;
 addfd.newfd =3D 0;
 addfd.flags =3D 0;
@@ -864,10 +864,10 @@ close(fd);          /* No longer needed in supervisor=
 */
=20
 struct seccomp_notif_resp *resp;
     /* Code to allocate 'resp' omitted */
-resp->id =3D req->id;
-resp->error =3D 0;        /* "Success" */
-resp->val =3D targetFd;
-resp->flags =3D 0;
+resp\->id =3D req\->id;
+resp\->error =3D 0;        /* "Success" */
+resp\->val =3D targetFd;
+resp\->flags =3D 0;
 ioctl(notifyFd, SECCOMP_IOCTL_NOTIF_SEND, resp);
 .in
 .EE
diff --git a/man2/sigaction.2 b/man2/sigaction.2
index 0b1c872c2..c352da8b5 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -260,9 +260,9 @@ argument yields
 .B SA_UNSUPPORTED
 .I clear
 in
-.IR oldact->sa_flags ,
+.IR oldact\->sa_flags ,
 then
-.I oldact->sa_flags
+.I oldact\->sa_flags
 may be used as a bitmask
 describing which of the potentially unsupported flags are,
 in fact, supported.
--=20
2.30.2


--6dra5d4wu6xlpcda
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNrEACgkQ0Z6cfXEm
bc7jWQ/7BTIEbichWPKGuLRp6sixZSazL+3AdOCWFa1cV+qEL2FSURN6JplapRzn
ahTWqp6oAgttBc7Ud2j6jCbytMGYccIfat3TQjfvMHJGl891H4qfRn3FWcBExs2S
cZi5UJXLfR5C5D/8I7ACw/4TgB1MtSNmy0wCX9M4Apay1IZgL1KE0xkfQnmT59Fh
nsyhYCT8dcr658mAH86P5ic1dw8+FnBVRPVQHFg7emz5GMUa4DED/R8fBZfQDcnX
vCb1RXfuEzQfkSD20iqBeu5r2TN388pLw0iY4iW8+nzjrSRFNNz1r4RhZIE7uFwR
gPX3f7xo//BOpvBOOgx+klYw9FNXSETid/ZsICsnKdXdqw32y0fipzLcJpYjgsga
dgmQ+X7cvMTlBtYwMACFdHNXCrO5xC3ckEaMJ04ln9WExNag8+qNicBJDimN0DHs
CEzBHt7XXb4vd885Gs1UOML095envn9khzb+SgXIE5BunHQZGNFv6HlpkvoBlkcE
WMRIGOI6jD+LSc6TBdrN3t436XxgQWIXRZAHDsgwouYG+zOCD4a61+T9Xedjk1Mr
exvr0aGFvHU4qD36aG3XQY0PAu246r6gbXtn5eLru1f5O0cmnMu81TaXiECk5hDQ
Xb3i2RC4RRYpDnQlRNSem0u0eZ5CYGnj0BwsOhI9nx+Do7rxY20=
=8zdI
-----END PGP SIGNATURE-----

--6dra5d4wu6xlpcda--
