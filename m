Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 645AB677283
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 22:02:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229880AbjAVVCL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 16:02:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229811AbjAVVCK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 16:02:10 -0500
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B8371E1ED
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:02:10 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id x21-20020a056830245500b006865ccca77aso6265519otr.11
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vb4djEoxMtuxa/WVs7IEoWkHeSj8tg7GeFLImOMPG/o=;
        b=GMe4OmhsTM7k7IhlSpsQo/XbF8yp60IckHOnebqsVwpyxR649XSq9Iu5vkcPsFd3ou
         7pVWck4PHWomUMDssbaJMx7aifgiDUm+SZ1cNKBaazaCCnjsLe+58W/GdGnEna0mKpzC
         8Id/D0CDGx5H6jZ0ox7X+Nonb1NLHnFpVnH/xnFl5r65QimKZG72FPP/Y6lZBjI2Fn9k
         HigXAPgD153wJvkcLcqTZ9tARboB4OyC+iwhNRhuDs9nymi42GHKJUJypNngtPUthORw
         MDJ1GcJL1DUznIqaPfINodQyvGtFLkI7aa4fim3olMiQhUT7rJKmSRpS/YSH9v5yeRzk
         RnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vb4djEoxMtuxa/WVs7IEoWkHeSj8tg7GeFLImOMPG/o=;
        b=fte+6EakF03e7kisudIV8+WTe2qpqUOGh8c4TX2gKyFPbBTU5REVA8aiRaHqfmaKi+
         YqEEkQhVeTn2GcKY4b4UiMJem8zChaBTNwXPgVx0YPuFF3wA8mFTrlKE4FCFO1Oj7B8R
         UXA94GR1VT/cMdEOO4QN6cgJdi4Y18k/mUaY7VNRKi6t5XZEBY3PcmEpaOpgBSUSrKm9
         /+HxcRFHEBdpui96Cmq7oYowRx51BCqQ/iF63KyW8bBj+TDlyqaATl4QnWHQFJ8o8YAh
         mOWtTKCeqh+svEEnTKGmDeM35QnmRPInU7eq71LecvqjsjukErhvpuhwXqNMqoTGcnR3
         OBWQ==
X-Gm-Message-State: AFqh2kqurBE8trJodjU768Hk4wJ7vFrwrpgS8YA14uv8ZuhTZx8tpmVN
        zNS6DBCqvttf2oP+ECAbo0BIOx4V0Qk=
X-Google-Smtp-Source: AMrXdXtc9yiPxM6RqQKbCWZ2Nmvl2bg3u3kKD4dPNhcxOt3AYhxRblkPmjdg4RryR8oLCcK5xWmQtg==
X-Received: by 2002:a05:6830:6502:b0:685:134:b73d with SMTP id cm2-20020a056830650200b006850134b73dmr13278459otb.23.1674421329484;
        Sun, 22 Jan 2023 13:02:09 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g6-20020a9d6186000000b006864749f39csm9111434otk.36.2023.01.22.13.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 13:02:09 -0800 (PST)
Date:   Sun, 22 Jan 2023 15:02:07 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page namespaces.7
Message-ID: <20230122210207.w25k5br5idyna3c2@illithid>
References: <20230122193125.GA28843@Debian-50-lenny-64-minimal>
 <21a40d27-e732-fb70-edc7-c18af8a59ed1@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bonxmwyznqzkxiur"
Content-Disposition: inline
In-Reply-To: <21a40d27-e732-fb70-edc7-c18af8a59ed1@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DIET_1,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bonxmwyznqzkxiur
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-22T21:17:40+0100, Alejandro Colomar wrote:
> On 1/22/23 20:31, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    /proc/sys/user =E2=86=92 I</proc/sys/user>
>=20
> Please review the following patch.
> --- a/man7/namespaces.7
> +++ b/man7/namespaces.7
> @@ -270,7 +270,7 @@ .SS The /proc/[pid]/ns/ directory
>  .\"
>  .\" =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D The /pr=
oc/sys/user directory =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>  .\"
> -.SS The /proc/sys/user directory
> +.SS The \fI/proc/sys/user\fR directory
>  The files in the
>  .I /proc/sys/user
>  directory (which is present since Linux 4.9) expose limits

I would use \fP instead of \fR, this way you return to the "previous"
font, not the roman style in the current family.  This is important in
(sub)section headings because they are normally set in boldface, so
switching to roman explicitly would unintentionally put "directory" on a
diet (i.e., cause it to lose [stroke] weight).

With that correction, I'm +1.

But I would also quote multi-word arguments to _any_ man(7) macro.

Thus:

> +.SS "The \fI/proc/sys/user\fP directory"

Equivalently, if one doesn't care about portability to ancient
formatters...

> +.SS "The \f[I]/proc/sys/user\f[] directory"

=2E..will suffice.

(One might reasonably wonder why "\fI" doesn't cause a loss of stroke
weight, too.  In groff 1.22.4 and earlier, it does.  In groff 1.23.0,
the man(7) package remaps the "I" to "BI".)

Regards,
Branden

--bonxmwyznqzkxiur
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPNpE8ACgkQ0Z6cfXEm
bc4qjhAAiuSJFaM9wibdTAdpkI/kmSyT+lVDddmjhlXRM8s11Q/ZPPeDeKEhTj7k
k64kaq6vyHKwAPEah95vYWXlQNUbJZEGLXCJWQxzhAu5r55P7FCAYXy+TjkL3G3b
x0r9470gpgzlHyLCnUkdkUaglCiloG0Zc67tThu/fQ72sEyLbFGTYdV3zRDez8TI
/ArIXT4bY4RHXdoKl2LXQa0DzJRQ7vl362oGoVoAnNhNN5ALyG3ZbruJ0cmIZ8GU
bsVdKV3xTQW0ZOd04pipefChYO+iz3J5wBM4H1FGLPrsQrblBAcftTFWD3lq5c4i
YRQCCxMh8fy2NSg15aASHGXchoN4Nv0oMV1MSEKzvAGI7X52vlXPFeahvjH9WmWM
V6l5R0WTn6XEioJ59Vghe35m7uEj48KVJzznryyxV0gZMRYiG56Rg07BEdkfKjZU
ecnl8iFQ1Hbo9gssy4+/RxvlxD+JtAIRSNTpw6moUuX9PB5/8YJVYFVvL1z06oLC
t8NLtM7Y2V0GtNDV7LztSpmf0imw4fuzSCrm0By580r9kUsMXF2BfyikNSTfFDiD
JBxu3VUlmbBQEgnuajGFxDEpNGR4eVq7UbGB+ooVzKblAWDDaeHU4CBzOGt5GEXo
seJo9r0NNHCxNhaRyGEdJ9CLwB4DF2MDh/44/US7bsN8DVsEKug=
=9H5f
-----END PGP SIGNATURE-----

--bonxmwyznqzkxiur--
