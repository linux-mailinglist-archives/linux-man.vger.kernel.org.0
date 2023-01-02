Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D405F65B630
	for <lists+linux-man@lfdr.de>; Mon,  2 Jan 2023 19:06:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233076AbjABSGA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Jan 2023 13:06:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236307AbjABSFi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 13:05:38 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E38D1C760
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 10:05:26 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id v70so25472420oie.3
        for <linux-man@vger.kernel.org>; Mon, 02 Jan 2023 10:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VoDUDP72WaWrbJBRvL5Ck5ihhI6Kv1Zqj2wUvHRPQYI=;
        b=nRKSFhlVKg8L8rqf25LiT54LzbTzJkLbROm3qwu0iPROsLtzKk0qDp7FdYDyvbt3jz
         E+8++hJZWaFiBXedtfC7kwTm7eAt8jxUZzIRDxMhshkuXMnBFqASFf+r1bVayOc87M0u
         GbbbJWXxiOzGRay+Mq49YInTH67wObRkMW/bzhcMTXSG7kvJZsj2IQyAhzOi3lBm1GY0
         dalYzqCZ2YXFWnIfXXa2h+V0PPRNmqdUR3TxklKe/hYDqPcbIdXCY51EpeVDYmO2wgca
         Xb8sv5ol61BpVPXJDofFMPUNFDSCRcgEv0pXRR9jVHTOP10bPWjGcG0AXl0jXcN8vqOH
         Vp6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VoDUDP72WaWrbJBRvL5Ck5ihhI6Kv1Zqj2wUvHRPQYI=;
        b=iJ980g3pjAVLrRkyOc7mt3RbNr3XD9vDGLpRXSNOXenlDY1g4ENdOXocw420GMO4pV
         eIUkgEEuuDur/IpMttgJMnWjBY5MiRxka8yMohlNSHG/YzLjg2+60tRq08DEei06HVOt
         0DKpK5r5V7BKhEkN/WPACTzwLZ0sqLnhTF3ZLEGINmniao/AedMzztQNY2KrGuan8Hnx
         6xY0hSReOYDthD1zO7oVjSEU4UM0rPg8r83OHftEdsHCt0qIkveiCUjv4JYMEi3VOSpc
         8E8lFE+7/94KhWMzhyPGG+09TYzXBthEqsyUvJ7+/fCzQSn0WOQ624coDy9zK2KwNDdh
         d8lA==
X-Gm-Message-State: AFqh2kqvFmEQ6fRE6RdvpdflW0XJqmmBOYGPaCsRyiGaCIOh5q5oUxg9
        cNhexnUcZFj9cqb/gm+f8sQ=
X-Google-Smtp-Source: AMrXdXt5sqAaPG8dMBFi99HRz9NPCxAZ76TUuUlLL5iitU/Sf73dmb/Gx6GibaZnVkR0wTmsgS6UJg==
X-Received: by 2002:a05:6808:208e:b0:35e:d048:8a75 with SMTP id s14-20020a056808208e00b0035ed0488a75mr26981714oiw.0.1672682726305;
        Mon, 02 Jan 2023 10:05:26 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id l26-20020a9d735a000000b0066ec4e2b396sm13814051otk.53.2023.01.02.10.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 10:05:25 -0800 (PST)
Date:   Mon, 2 Jan 2023 12:05:24 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] path_resolution.7: wfix
Message-ID: <20230102180524.rocwvekn6laz4cv3@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="lvhglp26pifm5eza"
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


--lvhglp26pifm5eza
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Not counting function names and cross references to the symlink(7) page,
"symbolic link" is preferred to "symlink" in existing pages by a ratio
of about 380 to the handful in this page.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/path_resolution.7 | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/man7/path_resolution.7 b/man7/path_resolution.7
index 3bae15c6e..5c44ae03b 100644
--- a/man7/path_resolution.7
+++ b/man7/path_resolution.7
@@ -73,8 +73,9 @@ If the component is found and is a directory, we set the
 current lookup directory to that directory, and go to the
 next component.
 .PP
-If the component is found and is a symbolic link (symlink), we first
-resolve this symbolic link (with the current lookup directory
+If the component is found and is a symbolic link,
+we first resolve this symbolic link
+(with the current lookup directory
 as starting lookup directory).
 Upon error, that error is returned.
 If the result is not a directory, an
@@ -164,15 +165,16 @@ the component preceding the slash either exists and r=
esolves to a directory
 or it names a directory that is to be created
 immediately after the pathname is resolved.
 Otherwise, a trailing \(aq/\(aq is ignored.
-.SS Final symlink
+.SS Final symbolic link
 If the last component of a pathname is a symbolic link, then it
 depends on the system call whether the file referred to will be
 the symbolic link or the result of path resolution on its contents.
 For example, the system call
 .BR lstat (2)
-will operate on the symlink, while
+will operate on the symbolic link,
+while
 .BR stat (2)
-operates on the file pointed to by the symlink.
+operates on the file pointed to by the symbolic link.
 .SS Length limit
 There is a maximum length for pathnames.
 If the pathname (or some
--=20
2.30.2


--lvhglp26pifm5eza
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOzHOQACgkQ0Z6cfXEm
bc5wKA/3S4rS0idpDQC8a85F0ghRTe7A7TcYqXKqG2N/8yIeuZFiO1bPnUNAgbgW
iB7puJ5sf4L3YyAzUnhtZpdRWxWsOb3B928adECfwkmX8rbEGE9aEd65f9YjVbsX
PpoJBT1iJJgrv98Dgk/g3uGh6ApSEqBRUltCcyvy+1fyVIlV1cB0hZbMJ7n055dg
uNNoKSVeEPfUYVfJByxibChRTFdliHs6tBA7E5e4vNw+vH2xAO3V5o8chwxF1iYq
ToMywb4OO0xJhvUvC505AgG4f1LQWH+jQEG4wzVE5sHQd22XRuCPrnf/CuEPCs44
YhxD1HZolIAlxIeqsHsREHhJkvjxeU/Y8vqJL0iFSWODpRiAIvWQRsEdZjjKJZzC
wR3TkilHRKBZxDlr4I9Rd9TnbArh6VKEORO/7gWdcoeyqpIEYqJOXAlpf6Jl7GQF
D5qwdhzos3WBwWLVsrA6Qc80nRfhEK89xWrn1tayFU9uoy/EqIsT9rGe6HISNmPd
uTFt1quRoPEKKiqTCdtauU9z/miHkl2L6XhwCHs8EG+4LlSSaoGDRqL1abgpAWGP
8vunUsjw/sQr6qsRfk+biRJxUeNwQtGXw07v8xyjCcbSGK+EMEQ77dMKdbI/ZdNa
AlnY0t7Zquog0DnvYaB2q6aRpTOixeZ8ZU4vrc+5nueKwUQJ1g==
=XuSo
-----END PGP SIGNATURE-----

--lvhglp26pifm5eza--
