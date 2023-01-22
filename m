Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 075E1677237
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:08:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230354AbjAVUIt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:08:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230026AbjAVUIs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:08:48 -0500
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AC0012F22
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:08:47 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id i9so4983313oif.4
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z7AO8N21hHkT2SPnug7NzPW+lRZYL63SffX1ZarZY5U=;
        b=TfXTwC8TxblFAR0cyjSLkHPiKwpyKDeC/Qat5HaN1mAb5vN19uOxbipaYsaegv/V20
         IN+yAZiUd+Q9Ft/dir5Dq6sQ08qa62+ueVH2YcqqPO1ROLoJO4F79FqMKFeFjrihBt+d
         +76aVRg+chFTF0EX8WW86xDTYC+2u5+4cvJqn1Jb9Sd7dBbLKKri2ayeKeHSq8+1bvum
         zIfRQAcUrYRufi8ZQOrPLAhZoCrl4s8Wn+v2U82zem1L6WuZAHcTlg6QXDeAhwZy01DS
         pRf5jODHH5INSV94PDVbvTbCUrgLiIc1oJtVT/kI1sr2hgx+O0seZhfvOaSBapb5GAi1
         dGrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z7AO8N21hHkT2SPnug7NzPW+lRZYL63SffX1ZarZY5U=;
        b=Y87bDaM3dad+8E8YD/hz7qZC7vbX0DHeA0o2EcZfudHWgEqV/HS9Y51gvyujCpopiz
         qQwLhKmDsyfqvHME9YZ1cua7mh5hFWtxG+E9v0GG1iuatKgSDK5QU7x5ithiZK8Y8x0f
         r9NBTUObTeVC6M9DLMlYcdoaeLKmH+XoBJ6HAnQCQ7mY5GXkqkjLA1rvV8HXyJXWkkJj
         aWalUR5MxhocPnl9SXVMy/LWIJswF5pUnEJUUXYp6oXdoCAybgq/CKihBy/BGjIgHN07
         YpBeuI7dwFt2cwvYCPZiO76rWOnDJAPcEK7HBHZ9rFqwJsQZI0xNAw8Pq5BE6GRTNNXD
         aU1Q==
X-Gm-Message-State: AFqh2kpIiYbMFKdrQObb+uD3yjL7ecB8QkDr4CAPm4ZBl7hRNVk+kjDI
        tvwUPJYoCTZhoDL4flMIJpc=
X-Google-Smtp-Source: AMrXdXuzBJ3oPlHczjHwAlY+8jV+8jhlBOf6Ow6ERBNIFomVbLN9vvvDJuXUZKkzK13yaZM4XRAnEg==
X-Received: by 2002:a05:6808:319:b0:35b:d787:d6e7 with SMTP id i25-20020a056808031900b0035bd787d6e7mr20884535oie.47.1674418126610;
        Sun, 22 Jan 2023 12:08:46 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q33-20020a056830442100b00684cbd8dd49sm15518803otv.79.2023.01.22.12.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 12:08:46 -0800 (PST)
Date:   Sun, 22 Jan 2023 14:08:44 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     alx.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page session-keyring.7
Message-ID: <20230122200844.au2yezkhalgk44n7@illithid>
References: <20230122193129.GA29087@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="d6nlamsobal22chq"
Content-Disposition: inline
In-Reply-To: <20230122193129.GA29087@Debian-50-lenny-64-minimal>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--d6nlamsobal22chq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Helge,

At 2023-01-22T20:31:30+0100, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    What does "under others" mean? Is this a special hook? Or does =
this mean "amongst other actions done by this command"?
>=20
> "If a process doesn't have a session keyring when it is accessed, then, u=
nder "
> "certain circumstances, the B<user-session-keyring>(7)  will be attached =
as "
> "the session keyring and under others a new session keyring will be creat=
ed.  "
> "(See B<user-session-keyring>(7)  for further details.)"

It seems idiomatic to me.

Under certain circumstances, I wake up in the morning.
Under others [other circumstances], I awaken after noon.

Regards,
Branden

--d6nlamsobal22chq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPNl8wACgkQ0Z6cfXEm
bc5kNQ//YegYSqZjySVbaot9F5hsEJ8p9PEefQGpjZZniIjEAifZaCFSIUOf87fI
1OCCtaRM44SPbUJGoQTsSWZQkOynRx+fsKW7IGEXL5ciEWE66MI/Jiabi8jbl2/V
qNON49BHkKWOJfteTYJ68fN3IYfKfqOLWZM6FIJ3smF2MZU3YC2dyBshYtvmWyap
xmMFl+McQBM3R7PxIQEzE8StSrUWspFF/j9LNRcKBmx/WSyzBD/M75lXqn3Bw1eZ
NNumB/FzVs2YAlzylZvGbXoKLtRkEdAVXsvNdUP1uB5EPu+CNMHGURjVwjPiqd7a
BhuFk76uliftRXjN/5ZJkltzUEI4q4QV2HPwxgX9qdcOBh8KVhNOCocd+xnCzoYY
us57JUB92r1FZcJhyM5ApDjqZohF2stYn4H6/4xqZQz70hhLj4OjYX35Apf+yNmo
LMNL/zcXn6egG3Zd1+3flK2V5eeeVR2a+kXKbruYhy9WVwcQw6+DLqW2e/oEP/im
iTvgduY9oqjqVlvzt//6UQzazc3o3kF2HLfxiErt/86Ke7Hi5WpJrDTrhUkz6HRa
rsRJKNs3NV5rYneh0tKe/nEcqvqsh0lsvULpZGDQzvMU/zQkrCrr6lQ7B8/1JAyg
SCGY1JJwJEGpySRy1Yn5hWVB0ewYwcerB7NOdwy8GW2k2/l0yYk=
=lxt/
-----END PGP SIGNATURE-----

--d6nlamsobal22chq--
