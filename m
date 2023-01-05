Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7057F65F70F
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:52:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230402AbjAEWwg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:52:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236357AbjAEWwT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:52:19 -0500
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A25F558824
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:52:18 -0800 (PST)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-14fb7fdb977so37992557fac.12
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7LCwZvPLYfu03zieY9p5E1IiJ41lAfwEOc9SifW3Erk=;
        b=nBSaDGkVEYm3RNzZsk9zLaG2fH5DYhOX/oRNWu6iiddoxh+CUybAZn23c7Tg6PW5cW
         0S/sEmbNJGwuGfz8bT9Hh0UWkAcDPCLncoJTTZz7M5oEqkci0LUZqxHzkR3aim0Ou1vo
         ZSFbxgQrPkdT7gR4Tk/FEc75jBdGTZLQgD2ior/kEIki6GYat/kHyLeIovQ/S2UbecjV
         ryID0qOqopeY4jzy3SXYa8tTLv4JynrPbW2cHH8kiGGdkVPnHmKMxaTw9wzlw8jQ7hpR
         7Tej3TUedW3hJn2uRoSbUxQ2YTlckOXaoAIbejGhKvj4+agEzC/xt4iVnAg4gDSNc4+4
         53Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7LCwZvPLYfu03zieY9p5E1IiJ41lAfwEOc9SifW3Erk=;
        b=Ih9ZHCDdNLC1OruFHf2z/9pfoffwMmiJVrDWPAyjSDdyB5EV/iOV8Of6YfDHSJ8Y7u
         CWBxJ7N8VS7zs2AUUKxjADaZ4uAYLs7+I7Tnev3sUWPIX1mDvek36NXOC72h1mfCDbqp
         ih5u1Aw68VKvI/a6xBPyTt+ZFBOVRXfTb+rjhNUWAxHaSMytmashQyuaJDIkEZSc5CH8
         mMD9g01xS7Xwee9vI10CzI9jyoeXFQpLfTKH7YWsHAeKvfVo7Zu4bBdyVjDEdyZZ/bUG
         lgNP8oSSQXZK8JoiKHIzx3DQBrTUCPfpZcmBDUGKlw7fvTcozhNrD2nHmCP5SJ/kGcS9
         Ao3A==
X-Gm-Message-State: AFqh2koI73Lkb8xMOWXy1mcxMp+8HdGDBnISWX0IBiwUzMyn4/Do1kji
        scRYVW6JBzwI94mSkNc5cOLfkwcBp24=
X-Google-Smtp-Source: AMrXdXshfIlmxB8PBkfTYwe8ofK4vFIwXHGUIAAjVJT9EoXNf1BGPs7a+AqhCSXIUNW8KGfzDzRwtw==
X-Received: by 2002:a05:6870:5a5:b0:144:8d67:906e with SMTP id m37-20020a05687005a500b001448d67906emr27277872oap.24.1672959137978;
        Thu, 05 Jan 2023 14:52:17 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y23-20020a4ae7d7000000b004a532a32408sm14958038oov.16.2023.01.05.14.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:52:17 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:52:16 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 02/13] ldconfig.8: Sort options in synopsis
Message-ID: <20230105225216.qzeafypbxyo4r5sj@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="qf3exic37jdgmgep"
Content-Disposition: inline
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qf3exic37jdgmgep
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Sort options in English lexicographic order (aAbBcC...).

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man8/ldconfig.8 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index 0a4695e09..cee0c7583 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -10,7 +10,7 @@
 ldconfig \- configure dynamic linker run-time bindings
 .SH SYNOPSIS
 .PD 0
-.BR /sbin/ldconfig " [" \-nNvXV "] [" \-f " \fIconf\fP] [" \-C " \fIcache\=
fP] [" \-r " \fIroot\fP]"
+.BR /sbin/ldconfig " [" \-nNvVX "] [" \-C " \fIcache\fP] [" \-f " \fIconf\=
fP] [" \-r " \fIroot\fP]"
 .IR directory ...
 .PP
 .B /sbin/ldconfig
--=20
2.30.2


--qf3exic37jdgmgep
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VKAACgkQ0Z6cfXEm
bc5GZw/+IFL8TQAT4T0RLRAqmnEEoYbknzeyFnnTMu737oMhDC7q1fOzGgJz67Gi
NTq9pv5x1Ow3VSYNev8+d59WBu0a8deKf3HHcWec5/1TICAT1ASdMhzXADJfPHb0
MBgcMj18vr/sNkmLl3Z6Rf3QtjzatA25ot73FhZ1/zhanuGqA4aSyg5R7k20BVRb
xYHY1AWAmL9mGo/CpHa13YwkHpyzUvTwmf5s4Q9Ixpkcc68ZlIqRkub4bfSyih1A
GcLoPOp9BIcs1y+JrfBweKFTPw+xkQJveJTXePHF4p1fs8SGsfT9rSG01whqc21O
a9RzieHa+jcYIMTP6R0z0KN6yN93ORuWLmcGU/g1Kt4S2EdaeYKbfTPc942/8vlZ
F5FsJjitparciINelGt3DPNMSngLbdWuhuPf52QHL2v2usRY/B8goz8b1834E/6N
d/AtZT0m2e/gWjvk6itxXqo7s34YXblkM7r2dGaPCZyRnLvAGv/OAwydooPkrASb
4DK6dTlzncDyXd3PSsJYt3g1inLU9M+mk9czQOeTwZjm+V3GsTzjwZSuMdsR5lSX
2q0kx1eT1HGxZ5VmE4iVZItg1fvSJuzOocuYTw7iFahqhJHRHKkLHzhYxJXn9+6Y
RS7M+vnaWPZaoQiYZcwnyq4WJdccrah5AxooAGzzP7EmiaWP3RM=
=L5m3
-----END PGP SIGNATURE-----

--qf3exic37jdgmgep--
