Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E42062B1732
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 09:28:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726227AbgKMI2H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 03:28:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725866AbgKMI2G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 03:28:06 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B35F9C0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 00:28:06 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id w4so6485600pgg.13
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 00:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hFLzeA6oSMR6YU3fZwNO1vyiywQFjcs+duTuPfKb+q8=;
        b=mRZdzHxwl42GCgNeLocWU1ZlgZyRrVF6L4oGa4rwW5d470V5tXROuaxuzc7zq3fvtU
         e+VbGjJcJoPP8GxBGRx5OpMUp/DdIM6eyiHqYU+bglV1CldJysOYf9E9mZTTkmhwRvVF
         iR04Wk3hF8VKTc+Mb7vIWXedCtT7d30XPO4FQVWHMhRWmQ68owVUCvQOPbb4s+gagcTD
         IBVboMFd3ISrnB6QX+/D20IVYGvKNnFeYXTTJRuVFOBK1SNZUYksLeaoVa7eDVU74LdE
         BhIX7vkBrjrZRwM2LqUwFBzWgakJzbdzOW96R8V223uu02w2DWYPJ+YOaT2LTfOExLIg
         5qGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hFLzeA6oSMR6YU3fZwNO1vyiywQFjcs+duTuPfKb+q8=;
        b=ZSb+IM2QR3xnysB9+eKyU2Rmpy67l6EOn/GvpeQYOyLSfT36gX08X3sHufoqzcNC+/
         C3WiMTTc+GygVCHqqALmJZ/4Cx1F4kDBouiCI4uMPxB5XB9bJvBrXmb0kX5Ii86MHlux
         ekANIbjEK6MKuDanGJJhkp1zU9+6Irx7ulb3S69OmOCUVSL+D2ve7J+4E8hfyLJI/c5O
         dCy9gUDvlMSKO0CpgCof8z7FbUlpCGleE0LN77kal/L5LU+g+NBSmeoCCIcUOCiuk3O5
         CVez/QexGTDijDoXLqSDdQ6ahVwutuqA+RPBQgsCKKeYASnTr3QJCrKcId647uivX5qi
         ZUhg==
X-Gm-Message-State: AOAM530TDRDpU133C+O4ZmTn883ZrNBhskjjkzCAc13FWguUCxnEVZ/M
        e+vBDSAyJg0OE9rEzykXnBs=
X-Google-Smtp-Source: ABdhPJwsC/SF0f9zNB3D7k0ayujG1OYMZsknuYN30YIxbpn4cOYNzp+4IHv+4LdeSM7Lhr7Yg7Fhvg==
X-Received: by 2002:a63:5421:: with SMTP id i33mr1262298pgb.316.1605256086170;
        Fri, 13 Nov 2020 00:28:06 -0800 (PST)
Received: from localhost.localdomain ([1.144.241.157])
        by smtp.gmail.com with ESMTPSA id k8sm9047547pfh.6.2020.11.13.00.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 00:28:05 -0800 (PST)
Date:   Fri, 13 Nov 2020 19:28:01 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: Format inline code
Message-ID: <20201113082759.vqeufvucqg3agdhh@localhost.localdomain>
References: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
 <20201106093845.12897-1-colomar.6.4.3@gmail.com>
 <3f041e44-c5c7-f17a-9e99-125eeb6ccb0c@gmail.com>
 <387259c5-3051-8058-e99c-b17873fe7187@gmail.com>
 <CAKgNAkjsnu9+rxdLgZ5VzYxjFf_c1Ed0JUQ8=KHkK6Qw9X4B-Q@mail.gmail.com>
 <bb5f3aad-d766-fb9e-e77a-09009fb7b599@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="dim4biwqzeeyppn3"
Content-Disposition: inline
In-Reply-To: <bb5f3aad-d766-fb9e-e77a-09009fb7b599@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dim4biwqzeeyppn3
Content-Type: multipart/mixed; boundary="td7tnhrndveqtkts"
Content-Disposition: inline


--td7tnhrndveqtkts
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-11-12T22:17:34+0100, Alejandro Colomar wrote:
> There are some cases using [.nf/.fi] instead of [.EX/.EE].
> I would replace those by [.EX/.EE].

Yes!  I strongly encourage this, and recently finished fixing all of
groff's man pages (about 60 of them) to clear the last vestiges of
=2Enf/.fi.

> However, I would still do the change [.IP] -> [(.RS + .PP)/.RE],
> so almost always you'll have [.PP] surrounding code examples,
> and you'll only see [.IP] when it is really needed:
> in cases where you use its argument ([.IP * n]).

I think this is a good idea, too.  As I have tried to explain in
groff_man(7)--at some length because this issue bedeviled me a long
time--the "relative inset" macros should really be thought of separately
=66rom paragraph indentation.  In a way it is regrettable that the default
indent for paragraphs is different from the increment used for relative
insets; if they were different, the distinction would be much more
obvious to people.  But perhaps not, in the end, much less frustrating.

If you'd like to give me some feedback on the subsections "Horizontal
and vertical spacing" and the .RS-related item in section "Notes" in
groff_man_style(7), I'd appreciate it.

	https://man7.org/linux/man-pages/man7/groff_man_style.7.html

> In those cases, you should also use [.IP] for the code
> (see perf_event_open.2:1426):
>=20
> [[
> .IP * 2
> If
> .B PERF_FORMAT_GROUP
> was specified to allow reading all events in a group at once:
> .IP
> .in +4n
> .EX
> struct read_format {
>     u64 nr;            /* The number of events */
>     u64 time_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */
>     u64 time_running;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */
>     struct {
>         u64 value;     /* The value of the event */
>         u64 id;        /* if PERF_FORMAT_ID */
>     } values[nr];
> };
> .EE
> .in

Have you considered changing out this .IP/.in/.EX/.../.EE/.in pattern
for .RS/.PP/.EX/.../.EX ?

I'm attaching two fake man pages based on the above content, following
each approach.  The _only_ difference is in the man page footer, to make
it easy to see which approach is used.

> This way, inline code, and only inline code, will use [.in],
> which will help grepping if it is ever needed.

Don't .EX and .EE serve just as well for this?  I regret to say I'm not
as familiar with the man-pages corpus as I should be, so I could be
wrong.

Regards,
Branden

--td7tnhrndveqtkts
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="alex.man"
Content-Transfer-Encoding: quoted-printable

=2ETH perf_event_open 2 2020-11-13 "man-pages 5.09+alex"=0A.SH Name=0Aperf_=
event_open \- run those events wide open=0A.SH Description=0AThis performan=
ce is over 9000.=0A.IP * 2=0AIf=0A.B PERF_FORMAT_GROUP=0Awas specified to a=
llow reading all events in a group at once:=0A.IP=0A.in +4n=0A.EX=0Astruct =
read_format {=0A    u64 nr;            /* The number of events */=0A    u64=
 time_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */=0A    u64 time_runn=
ing;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */=0A    struct {=0A        u64 =
value;     /* The value of the event */=0A        u64 id;        /* if PERF=
_FORMAT_ID */=0A    } values[nr];=0A};=0A.EE=0A.in=0A.IP *=0AIf=0A.B PERF_F=
ORMAT_GROUP=0Awas=0A.I not=0Aspecified:=0A.IP=0A.in +4n=0A.EX=0Astruct read=
_format {=0A    u64 value;         /* The value of the event */=0A    u64 t=
ime_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */=0A    u64 time_runnin=
g;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */=0A    u64 id;            /* if =
PERF_FORMAT_ID */=0A};=0A.EE=0A.in=0A.IP *=0AMore stuff.=0A
--td7tnhrndveqtkts
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="alex-branden.man"
Content-Transfer-Encoding: quoted-printable

=2ETH perf_event_open 2 2020-11-13 "man-pages 5.09+branden"=0A.SH Name=0Ape=
rf_event_open \- run those events wide open=0A.SH Description=0AThis perfor=
mance is over 9000.=0A.IP * 2=0AIf=0A.B PERF_FORMAT_GROUP=0Awas specified t=
o allow reading all events in a group at once:=0A.RS 6n=0A.PP=0A.EX=0Astruc=
t read_format {=0A    u64 nr;            /* The number of events */=0A    u=
64 time_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */=0A    u64 time_ru=
nning;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */=0A    struct {=0A        u6=
4 value;     /* The value of the event */=0A        u64 id;        /* if PE=
RF_FORMAT_ID */=0A    } values[nr];=0A};=0A.EE=0A.RE=0A.IP *=0AIf=0A.B PERF=
_FORMAT_GROUP=0Awas=0A.I not=0Aspecified:=0A.RS 6n=0A.PP=0A.EX=0Astruct rea=
d_format {=0A    u64 value;         /* The value of the event */=0A    u64 =
time_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */=0A    u64 time_runni=
ng;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */=0A    u64 id;            /* if=
 PERF_FORMAT_ID */=0A};=0A.EE=0A.RE=0A.IP *=0AMore stuff.=0A
--td7tnhrndveqtkts--

--dim4biwqzeeyppn3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl+uQ4QACgkQ0Z6cfXEm
bc57ZQ/9HF8/cmNGVS7RUTw8XugXnrHLX1HLcwwqR2rUxvu5mDYNgfJqXrLuZvqT
xbUWlb0vBtTdgWP56dXCIzfmoTdgNF1n7yMRkRzcYCXytutQaCOSKBys3hPgZZvX
lw1XF8baxvQjoZ5s7i6oN0HBhG5X61Zr+dUw6XsWvScSooS0qylk8GnrELDB6tWn
VKAVRHBd7lixbJpCr5GRPCeUZfNUXv6QC+5Eb+HxTIhdM7C/ulgffEsmaeLSOukt
6bvBkcEutXgTmZSTbpqYF3a/V2VwnaWBt3x/4632IiIoPas6QHlIkuQ46GRyvcy9
lwfkOzoyDG9srho2y4PMydveE3OFycFGuYmhjhrDu1UVw/2gHnhoFS4HJvyjvOS/
tNUzlV13J/d4J9KP0qgmwUjax0QFwbzSekSqTt1lT6g+MeLvrTbK+WcVo1RZbkeN
5z94H7fnaNLF/V4CobgyI0h+d5Sukxzg0FfOzHnlK4lhZuA25Ai7rkTV35gNZTs6
q71geqtCggaWkPmhH20DMjYioJrISA5ag1/ftFLpPlnyVbJi2HpM+9V+ep8gem81
dtm3v/Bq5UWodSkq32SDd6xWoZSbOej+jEXZD2FPnpmxISLmEZoo6Ap1MBDWj8ZJ
Rlxzx1y6gaKZXHPHx/FCnHkmLFxaHvqSQHPjyTswSFampz7Qq2I=
=5UpK
-----END PGP SIGNATURE-----

--dim4biwqzeeyppn3--
