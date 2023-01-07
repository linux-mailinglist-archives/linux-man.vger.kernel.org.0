Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2793661042
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 17:45:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbjAGQps (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 11:45:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbjAGQpr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 11:45:47 -0500
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DC03BE19
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 08:45:46 -0800 (PST)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-15085b8a2f7so4612685fac.2
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 08:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qYdI2FmdkHgC8DFPKodRtx7jgpfNBKR9Dmkxq6eC1Dc=;
        b=ld/wMiljTNAmAbAieq2q0hS52RItSAz22ApVW/bzVVMDXxhiMwp4fCX7Gura2+ghzO
         oYSb4uoPtu7hZakBgfdCkrLHBm92KxwW/a8HMWtaxUZavH6dXOD15pWRwOgBszD2EGsA
         zPirmuM9X4xvB4riMNPY0U4ECbvpGFzMtc/SKwyu51mSXNNYo80zkYcRn5RMb6vIk3+b
         ObPMbhpAteWMhNGgQwSAHxdTppJ9fr+ceW+2ntu61ka9V0bM6eoUHXxgqav+sVRA0I9z
         NNpCoYs4xMYu0yrA5QRZWg36JeB8b6wu2dn/e0nUgauYVCoQ13v5tNklumlHOKwrbqBR
         jMPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qYdI2FmdkHgC8DFPKodRtx7jgpfNBKR9Dmkxq6eC1Dc=;
        b=mGDPbXy738AzrV6nWZuhRT/GVLwnsANyuQ7O7ds6ssGcXkO7MUoHjjMTGVrhQWMYgu
         7Z3C1MPxukGOzc6J5YsciwHZ4f4W2dWppxKC/16XpJfGw1sjYMHm/MDlNE2yuLzn8w4U
         byQgGByub3W4MclMvP+ZB3Fh1se9wOJAYz4nWp7cqMP9YxZ8l7AOuWyLRBNw3Ee2F1D9
         Chlw8OnaGTQ+r+qU+OwSsAwHIpg7N9uNKW8fN/dWYIDNqTt61CPr3lzmJH+TlCQp89vi
         L3MeVttbrmPz6OC9bycvyknPDriV7MFr+QD2w1yRhjb3yhlX25XQWZq+b/flCQjOxcNZ
         THQg==
X-Gm-Message-State: AFqh2krrXfb48wQDRIMj0lFshbM9lPZeQWwMbq21Hi/WXz4MheSBG9OO
        eRqRx56k6NGxHVXJMseamSVaCJttZls=
X-Google-Smtp-Source: AMrXdXvuxDZZWoDT6rlVKNkASlKElBOzR2i1FgSqf5VIleIi8VxiVExOlkteNvBMi5CHS9S1SHkBGQ==
X-Received: by 2002:a05:6870:ac21:b0:142:1837:9008 with SMTP id kw33-20020a056870ac2100b0014218379008mr35614831oab.39.1673109944695;
        Sat, 07 Jan 2023 08:45:44 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id f18-20020a056871071200b0014f81d27ce3sm1855095oap.55.2023.01.07.08.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 08:45:44 -0800 (PST)
Date:   Sat, 7 Jan 2023 10:45:42 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v4 08/10] intro.3: wfix
Message-ID: <20230107164542.gnrk6t73vfz7fqps@illithid>
References: <20230107095518.3ix6hfbgig43tmkw@illithid>
 <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
 <7516714b-7f8e-b6b1-b44a-f114b78ac973@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hjl3dmg2it2ty6lg"
Content-Disposition: inline
In-Reply-To: <7516714b-7f8e-b6b1-b44a-f114b78ac973@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hjl3dmg2it2ty6lg
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi ALex,
At 2023-01-07T13:57:36+0100, Alejandro Colomar wrote:
> > On 1/7/23 10:55, G. Branden Robinson wrote:
> > > * Tighten cross reference.=A0 It wastes words to tell people to look
> > > =A0=A0 elsewhere "for further information".=A0 Why else would they lo=
ok there?
> > > * Use passive voice less.
> > > * Relocate sentence for more coherent discussion.
> > > * Say "application _programming_ interface".
>=20
> Hmm, after reconsideration, I've dropped the patch.  I'm not sure about i=
t.

What is causing you concern?

Regards,
Branden

--hjl3dmg2it2ty6lg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5obYACgkQ0Z6cfXEm
bc56uA/8CFqhB37F45nHwKCn0q2yedm9j8/KOrWdI7q9CMwh21B05UCembDwGhRp
ph7uVLghSZxioFW0aYuDQ9vv8rJM8iBMxm/RPEisjDvvm7RFa6uMkThz0AY4wMpR
zxy7yDU9YFzWemvuwLHwcAVnG91SHCM78QvirihRqTjZ64VHx1y2a0MNpBo45aK5
roWD3dgmY0bzLLmX6c3gN5fM643PD3ohT5zoj166wSibbGnOkjqSbWgmWPMWKNuq
SMOSCEQVnyGA64coY5dX0cJU1cLB7G2RHgEnpUOfFL4+QIwhjbwrVqDlATKraevg
QWppQsHMHHOvE66mEkLWg8WA1hf+T9PSAwj5qMxG55Dq7Ra81ZfWS6aue/HFo9i6
NPhXFv8ILMsRPj1b2GdVWvFQgzgwzTCrVVMMmmbv5mdSHQu2IhW6myCiqx45n4g7
yxPv/2/TLnQCfgMys2fYgEY4Aai0yrFRGrA2JHizBlKRa/PG/yPZkVaQ0qw9DOB8
FuvT6Czy7sOJxBHJorrWNzKEaWvEZJno4+OcoRWrdc0xDHpd2/iQQyydw2TEer44
siO4qZF5kkWP/kEmVgh5kGfTRZKWxiJM0JWhC9RLKNGrNmIZb8sn4w7HWO256vq7
ZKCwAohXv9KxIVpID5SY3zksnqqTeTaIfo3JXiOHiCMS6e6gbhM=
=SIJq
-----END PGP SIGNATURE-----

--hjl3dmg2it2ty6lg--
