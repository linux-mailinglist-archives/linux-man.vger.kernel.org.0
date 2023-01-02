Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE27765B34A
	for <lists+linux-man@lfdr.de>; Mon,  2 Jan 2023 15:23:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233048AbjABOXh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Jan 2023 09:23:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230127AbjABOXh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 09:23:37 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 859B4313
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 06:23:36 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id h185so2536922oif.5
        for <linux-man@vger.kernel.org>; Mon, 02 Jan 2023 06:23:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=njW6ACrLqMZDbsovJibMu9t3xh0JvBYmoQNSXS9zVGc=;
        b=CBeuYMcd675bhSzXGdwsiIC8j3ORQCJ+Vprazdhh9vzxA147Qn9dbggYNoJ+JU7S22
         O62yEhYKstnY1Y7Lr3o7lEH9rzr9XQCfbl6xI9DhOcbza2VzRgXe/JOhGUiksyf7EiGr
         6ajMZt3G3n9S7JEaZdNelOqoneiDv8njQeffNLL77OiGhAVqBqQlfcBenBMXJ9pZbWIk
         y4C0fcLMldoznGLb8jp6rbj0wTLvfFqBeayHwRKlHISGXlx5Yh9pvNg8T6S5bmXZbdmV
         YvajeIRJZ5Fs2JyZC7TU9wibqBVN3/7onz7M3nvoOtE5nPqwVqutkaApi/yozB88+KYU
         sjnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=njW6ACrLqMZDbsovJibMu9t3xh0JvBYmoQNSXS9zVGc=;
        b=BpgM/8FjyKfjvcDqFcwTyMLkbZR4rTuLAj6sUEBMeRA5h/snmr7CfZtfn2KfBN2Qmg
         uKX0ylTL4faUiaWtZ/o1qny6mqQF+nYD3QJSmSNxm8hN1KOcqn33LmrHTURGmpnVv6gj
         v2dxtJUjz41ShbMVA+yX6OUl+Vmyox9GfgQVAq/aQsERJh1wzyA7jdW9ovRzEytbuLyC
         2KVmOTC8/nzCX+ifkX9Orxi+5cwWP5BeBxPr0GJwIGuxdr0sAWIFKnV97NzVlDpV1bAW
         rZyZgukwvEIuW0EfHMwODK+kD1/4/Dul7aLXSc/xmmckDg+frBYacJOOH622ELATg9CI
         eVTQ==
X-Gm-Message-State: AFqh2koAsb3j2gwoI2DksNxrT08RdfPSplDXpgW+WazYUS1h6XoEUX/v
        1rTVDxeGBgRYimgDDvUJ9JkOa7COTioP+g==
X-Google-Smtp-Source: AMrXdXtk+6CLLoFF96lWmbyFntsynNjxOaF4hNNDvMiZH29ym7QcSrDRe8FaO5XrovMsO6dRLeZvKg==
X-Received: by 2002:aca:1105:0:b0:360:d507:6ab9 with SMTP id 5-20020aca1105000000b00360d5076ab9mr27245358oir.17.1672669415942;
        Mon, 02 Jan 2023 06:23:35 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d20-20020a056830139400b0066db09fb1b5sm13558866otq.66.2023.01.02.06.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 06:23:35 -0800 (PST)
Date:   Mon, 2 Jan 2023 08:23:33 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/4] intro.3: tfix
Message-ID: <20230102142333.3hfk2quub25gg4ts@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gljfrf5bqtyj6fvw"
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


--gljfrf5bqtyj6fvw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

---
 man3/intro.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/intro.3 b/man3/intro.3
index b08eca5ac..e85c0677a 100644
--- a/man3/intro.3
+++ b/man3/intro.3
@@ -89,7 +89,7 @@ Together,
 these are termed an API or
 .IR "application program interface" .
 Types and constants to be shared among multiple APIs
-shopuld be placed in header files that declare no functions.
+should be placed in header files that declare no functions.
 This organization permits a C library module
 to be documented concisely with one header file per manual page.
 Such an approach
--=20
2.30.2


--gljfrf5bqtyj6fvw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOy6OUACgkQ0Z6cfXEm
bc7Icw/7BAMnc9eM70iAGRMauc157hK/bdCzJiBRj5vcANNTQRI3SF/68hnEbS7A
XzDc4JmZOFf7l+AEQ4dzkTZ/MDkbFmExDhKhmzkNnhAGv2Qo8MnSv+6pyX4fvG1p
jfwwYdBJqsbBJJyyWwm88TTU5cGW7bAGBJdOWLHCwBMZjC8rwNCrBmes89K4744D
1gZq0L0Av02nLhnQEWIJtIG4bJFQNS9tGiALtHPSXvEt22s1t5lJ3SfXWOwfzoJZ
YEGUiEHJ/TVfGKrUrSUf7hug5yckR3rvHc3LCYyQbZ7GQn5Q+NvSpLdasDwJilvg
IvBoPO+jJgKXgqHxhLkbJD8PYZMGeDTON2bP1bAEEtP6vuwiRLPq8YOcM3FWNzAu
o/zS/bjDfTza3LjLHF44fXz1PPf0WyptnTbRjdsvEPXDMJlK5XckXK312J7av70t
/uM395IbvRh6HJaek/MxB++0TIAQM7IYy5AJnVrPy/InUV1htoIg6OoBpTde3n2u
9wpP6HePMs2xbvZGIPpmKtyMsAtqmFdoCkJVHsMdXnw6zN/KVoV6lUyrh7z1FT3b
B9DsGRH0M3xXoe3C3sXPXLTLY+IuVj2SdGmVu0G8o1tuFEoEgwNmq3rBNUoDranf
2JXJrH6ixWqava8mXaxOFbTphB3O6kG9t8Wtg+838zD48dumrjc=
=OJYx
-----END PGP SIGNATURE-----

--gljfrf5bqtyj6fvw--
