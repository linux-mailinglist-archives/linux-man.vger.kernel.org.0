Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8334690FEF
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:09:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229625AbjBISJM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:09:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbjBISJL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:09:11 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6571863104
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:09:10 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id r34-20020a05683044a200b0068d4a8a8d2dso781392otv.12
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PH0+3mPeROwK8CwhwrXRaqo1JAMr/2z2aqVHaWq5tGg=;
        b=c1fzzOeC6KJ7eOJ+icGnYJX0dNeuoit98hWZ4PCMHRLjqbGuZcWgk2BAvnD9q5fLEF
         w+QQAIXibkhQip0nKcJ6PyEk30ttGSle2UleN5ryra4b76joPrxFDOiZXWnwEWYR96QE
         PUd6LgKKaEadOeFg5aBJZ+OTeJx7eCJRYX6Wp96B4sCGzXqm9zSDqfEo5KUcG02K0mLo
         YIALXMOAt6HDbMzDtdbE+hZTJVwcod52/y6lEl9sUcmOy/xJxHhy4w/ph/hukV8ePu3r
         qyWM0S8xTY1zvy09zOwcv2QBdTioTtfZUOSXW8lYdlquFxBASveDrqP5bmDyUT5pQMCt
         h0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PH0+3mPeROwK8CwhwrXRaqo1JAMr/2z2aqVHaWq5tGg=;
        b=s0BJlQX82ac6KBFSgCkUBA1Iruwf9jKIlyLZdi+sm4eFofIVO52jiEwrmhmPkH9tZG
         gvSw3L0QqVKp08WiHCyNJzABApvrUIiKHUwP+fDJdqsAcT9g8k4vhqH5MDE1WfyqnNXV
         FfT1Sm88cIFzyA+q33YxSDZfhodfdIAj8g+UwSbZ21qvajc6J84CWh6dbO9EEtp+01iO
         yPEHu0YpXlre8qkJBTAow2/7hx+U2O9ID7nY8cHr13HDyr7cJfaHMQDBzPhBeDHeaAbv
         WECBNHrckbgckKxKgqGyEZW8AOPe3lJHk9xNAMPbVHix96J3EuaL3dwHBkKbUfGfrx4Y
         tgNg==
X-Gm-Message-State: AO0yUKXAIYzADVZocuie1WKbQBIAtIBgmKEmNb9jIEvtV3wUWnWlcXd+
        8e64/vdmu9FxYCcftQ0ANKTMPkcf+Cw=
X-Google-Smtp-Source: AK7set+q7D9nUZeZyRNEatZ9VKdESTQYKgbTnAltrv5OqkVontwCvx6nmngkM2+mRYvDGvX3gSjaMA==
X-Received: by 2002:a05:6830:6506:b0:68b:b35a:5d6a with SMTP id cm6-20020a056830650600b0068bb35a5d6amr7338294otb.17.1675966149671;
        Thu, 09 Feb 2023 10:09:09 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g18-20020a9d6b12000000b0068d6ed06b73sm1003440otp.18.2023.02.09.10.09.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:09:09 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:09:07 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 02/20] sched.7: srcfix
Message-ID: <20230209180907.bcp4lgm6uqrugkuk@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="i3tiziur24fc3gwb"
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


--i3tiziur24fc3gwb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Fix warnings from formatter.

troff:./man7/sched.7:989: warning [p 10, 2.7i]: cannot adjust line
troff:./man7/sched.7:990: warning [p 10, 2.8i]: cannot adjust line

Add hyphenless break points to file names, but also suppress hyphenation
to reduce copy-and-paste frustration.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/sched.7 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man7/sched.7 b/man7/sched.7
index 568b74b42..ba9196ac8 100644
--- a/man7/sched.7
+++ b/man7/sched.7
@@ -985,8 +985,8 @@ was not possible up to Linux 2.6.17.
 by Bill O.\& Gallmeister, O'Reilly & Associates, Inc., ISBN 1-56592-074-0.
 .PP
 The Linux kernel source files
-.IR Documentation/scheduler/sched\-deadline.txt ,
-.IR Documentation/scheduler/sched\-rt\-group.txt ,
-.IR Documentation/scheduler/sched\-design\-CFS.txt ,
+.IR \%Documentation/\:scheduler/\:sched\-deadline\:.txt ,
+.IR \%Documentation/\:scheduler/\:sched\-rt\-group\:.txt ,
+.IR \%Documentation/\:scheduler/\:sched\-design\-CFS\:.txt ,
 and
-.I Documentation/scheduler/sched\-nice\-design.txt
+.I \%Documentation/\:scheduler/\:sched\-nice\-design\:.txt
--=20
2.30.2


--i3tiziur24fc3gwb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNsMACgkQ0Z6cfXEm
bc5sxQ/+NXX/tyf1OvTkw4tgp7NHFdUI0awFsVYFphAsXN9eezmFxgRTiEnnRpzk
o19mtk+nDzZ9sQyEb2FW/Il8Zhj8YliY27T2L+C6WMFGltEEitD2V9fr3UDauDi7
tAZ8GdDY6E+Fedx438HOTE/Da8ZW02xkde+HqC0OoGeeMbErHsO5BsmSAiDe94AV
PAgSZElPl7WULYeK1rt1HvDar1IBh6g/xx5hEKIc9lCNcP29yK5BovmKV8vsqfV+
Z3mj0qZC0P0XU1fF17iSzC2HlD72bsu4J4zRERdZaenCC6DFz3Eig7nXP3f5umfj
R+WFLHlDPWNQuUKw9aCAb9sVOX+9F9tkto7MIttBj/BGx6n5eIJHJUX5TZqTC0uW
ky5G1Hn6XU7cB9wwu/8/yYkA/9N5eC8Zpnjwe1YLiHpMS6yE6E5CME/vu8x9PL4B
1aconOTasvZCIvXWJqJdvGvYWNOifedQl+3fw9GLwKiRn63H9k4zELJb9KW53ivp
8iq7UqDczW1fogEoGtHcJZjHT5zear1Q0awGb0ASnqBPBEVM25i1cyd9x/rBWdlG
Nj62s3pQMf0X/lUdIbXN3W4802e8bJdlLSQCR/0IwZKYSJ3HuMDzxrjeCRVFSPXV
MkmsV+Ss9ahmN3/wjl+yRN32vGBjEFPBJMaGyWsbRAX4Y/uaOXs=
=UFwL
-----END PGP SIGNATURE-----

--i3tiziur24fc3gwb--
