Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF63365B631
	for <lists+linux-man@lfdr.de>; Mon,  2 Jan 2023 19:06:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236289AbjABSGD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Jan 2023 13:06:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232653AbjABSFn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 13:05:43 -0500
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88754BF52
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 10:05:36 -0800 (PST)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-14fb7fdb977so27715166fac.12
        for <linux-man@vger.kernel.org>; Mon, 02 Jan 2023 10:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/HOM/U0v5yiKboPu1qHZRnuU0VtxD8sn5OAS13swM9A=;
        b=BoDl+2GGPYIJy/df+7jPAz/K+Dj75CJW381GmdNK4UX2jqBVucJCOSgPAv3AQkXbWZ
         1XDCoJ86Y7NR5N7CEGogJENq3fgrfbQl0G36CVA07IzEgrslghWgu4ilskn3CJ5n1CdF
         ktR4tdPy1fL3vH8RJ+3V/1cRCLfVYoYkyN4eZ8yKX21/oe1wkUM1ATmK8GJhONUEnY2E
         qt/ZTSE6ey+el4P9di3ey7sByf7SV6Bo7jxFgK1vOWnRvL6OQf0tRiTZ8UjCiJ9pvteX
         YGXnDE0oZfT14Cac0MChZnpPpNXvb/Frjs+Ogg90FBO9dEbg1ndTYldVAras3XVNMUiJ
         W+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/HOM/U0v5yiKboPu1qHZRnuU0VtxD8sn5OAS13swM9A=;
        b=v2Kjz9Fych2oiqFEOFkCRhnqYAwQiH9wyxN3jyJrgdOaq/TYRQK01MDElYH5okq8cG
         +XYhvvmP4pgZiiOjIfkLqR3F0GwsSk+TwvwzXi/PHLxBikpK0slT9M4Lwfq86nJfEOSd
         JhY6qYLi32IkGUY8KKGC9hZvOqxEAOsFXnso52wm+MqefbDdICCgqD5Wn3xm31/QZ7uq
         IkmMZ2dTjlxz4nnL2pKyQKMBwYU+yDnV5MhPk5Ng1p3OlxwRqYEb+sm2hSJcov/T+WCy
         H89bmZwu1mFv/qljKxqPPX5PaW+cu7gq+jhQwC+dM3vrjilMtPdZeJwOCIKz0O1Wn/5P
         L8Rg==
X-Gm-Message-State: AFqh2krYT1Cf9rdI6K6xBmgpMeobFsoowBIZ31+LPaQi6pSXNJ29YcKM
        VxLx3CkitqKmonNtDLKIWQNO6QEyf7XmGA==
X-Google-Smtp-Source: AMrXdXsnx9X1dqbANq4AiDG0okUJzzVx+zC+NU4LjNrbjrDZkJtijg0tUQnUE5XlkPGcdOnvzmhn8w==
X-Received: by 2002:a05:6871:209:b0:144:b157:ddb3 with SMTP id t9-20020a056871020900b00144b157ddb3mr21952142oad.51.1672682735877;
        Mon, 02 Jan 2023 10:05:35 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id u20-20020a056871059400b00140d421445bsm13270115oan.11.2023.01.02.10.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 10:05:35 -0800 (PST)
Date:   Mon, 2 Jan 2023 12:05:34 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/2] man-pages.7: Add preferred term "symbolic link".
Message-ID: <20230102180534.kb7zichghdlua4dp@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="d2znoku4g3g5puv6"
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


--d2znoku4g3g5puv6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=2E..per discussion with Alex Colomar.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/man-pages.7 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 8b56416a8..904c10497 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -882,6 +882,7 @@ superblock	T{
 super block,
 super-block
 T}
+symbolic link	symlink
 timestamp	time stamp
 timezone	time zone
 uppercase	upper case, upper-case
--=20
2.30.2

--d2znoku4g3g5puv6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOzHO4ACgkQ0Z6cfXEm
bc5Nog//XdihuEMiy8RL7wopQP/X3VGxi/iuPzmz+Iql0wxSVxfV8+Pcn+b1Ml2y
ers+mZYtPYImdU09gsuFV1nqVt2voNoOgUdYLgmCfGloRSF94URIEvRJbY5akKEO
fu4DUSUhJIYw4/KogSF65BVbiPIVWzh4zqBNokAw+Nz9fi+j+8w1+bP5hyUd+TOQ
lbD8dOpt2+2tZ7zTF/zstvhJLvW3t+S/XYX/i/vGam1R9/c6AWFKzKdDeXQKtSlb
mXbrsXxKL6nLRjQQvMM6QBGlNienIQkn8Zx2DerPsD7+Xx0zBxDPOqBjPbL09pAM
57oIWHC8xmx72uWvQcC8QB8+jK6xrW/1yEgCgLlP0gSoPRaHpf+YOU4k81pYd59e
h/M1X7ILZCzCsuq+FfeK2iwPeNu5fwrnmHFMwjgYzp3uvxez8qtxtkqYH60Q4H0m
3C7ztYWA87TJOEBoI7bmOLk6WPpTw4/b7bKbkerYp2oMEiJA8ZHpXvyI49ecRlDk
olAlpQvjWLpyrVE+Y9VXsz10teWYmWf6vTU4ZLCjwxSFqSQlix59Im4EcMZ6AMkq
Pad/sGgyPNoW8UzVKD8v1nDvST6C3QGzXXfPAo4nNDjL7XX3k3LroG9fmu1QP0/N
Rxs+yolW150+/NjhZp6lrYMp8s3t5r4ZXjcl3/0+Fx3R7VQc56s=
=V9RZ
-----END PGP SIGNATURE-----

--d2znoku4g3g5puv6--
