Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E9842B0021
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 08:09:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726245AbgKLHJX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 02:09:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725933AbgKLHJX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 02:09:23 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB6F6C0613D1
        for <linux-man@vger.kernel.org>; Wed, 11 Nov 2020 23:09:22 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id m13so3394185pgl.7
        for <linux-man@vger.kernel.org>; Wed, 11 Nov 2020 23:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=q3JxDcXM3IULlpsJlCTJNIsQEmPTZJtCmBTys4/mGBY=;
        b=A8nHeNIngg1ksgKQ5NjkkW4kcZWyVRcFXX66W3aNAYzCRIvhSGfihPlz34+y4V8rka
         6g4RKa9sWZRc3zPOQX4qelNeeXrLDg1mGqCq07GyKrqV47iw1atQTFkwsMy8syXn7DyH
         vkiY8VrFOJNy0Yarj0mtmgKV4geTZgezEW88jMx5LPeR03ZNwHA5XtOEERu1UGmPRsjE
         maey6wj+hKUDI83r91ptQAfQiRUgvRL0pSFtA7tg2gd+NMly2AeD/OCJss9JzeNW3+zt
         AmqW3lhrCtyHpOi9Vr3x29GOe5WKXGlw4O9CUHUDISWQrO5qjD7PhwTfhw0QTZ4xw9UL
         6y2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=q3JxDcXM3IULlpsJlCTJNIsQEmPTZJtCmBTys4/mGBY=;
        b=SMKOe7PTZOFxiI5y7wO04kjEvXwzo2RueWrtalknblW4e4qjVb4vyRv02SWzI3N9wa
         laNDR5u6B2YU+MLwafoywhhkVP/q0hxQSup7hFQdX235ZTGlM8E2KM8TQSDe1lEufiTx
         ExomC/tuHJx0J1jYWnYaQEMRX2DpFGqRALhexQuHWRaiqHo4iwV8Sjk9VzXgpSQZwT8d
         3XvgEEdnRi2xEqu3zNAgjT+6Ek+w9KRt/8AV27i50yGgXXoYmdw4xEJKZyjw03woLTOU
         0QgbZ1r0bL0/PZs8MxXSzHSESSx9ouSCQbrJlF2LdxMtrVcR0QNxsIvT0I5yNJqApTm7
         aHrQ==
X-Gm-Message-State: AOAM530dYLCd1jlIx20h4IJOxjryUs/+ypqeci2kRCcmPddYO4WBeJb3
        44ol/ly3TDtwq5rzzyHQI3E=
X-Google-Smtp-Source: ABdhPJzSpqzPTzWoHrgLtfPDjFgcoghRal0Okpsv3hjGPRqAZWTk3Z6OOh2PZbFMJ9hvPyq/vhp45A==
X-Received: by 2002:a17:90a:ea16:: with SMTP id w22mr7953880pjy.64.1605164962445;
        Wed, 11 Nov 2020 23:09:22 -0800 (PST)
Received: from localhost.localdomain ([1.144.241.104])
        by smtp.gmail.com with ESMTPSA id g14sm5479131pfk.90.2020.11.11.23.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 23:09:21 -0800 (PST)
Date:   Thu, 12 Nov 2020 18:09:17 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, colomar.6.4.3@gmail.com
Subject: Re: .RS
Message-ID: <20201112070915.ejttfz3lu3sphkkp@localhost.localdomain>
References: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
 <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
 <c6919fec-4a95-888d-93fd-ecb254ec2377@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="kevfm4cwoex3sqdg"
Content-Disposition: inline
In-Reply-To: <c6919fec-4a95-888d-93fd-ecb254ec2377@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kevfm4cwoex3sqdg
Content-Type: multipart/mixed; boundary="wsds64sgh2aq4hps"
Content-Disposition: inline


--wsds64sgh2aq4hps
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-11-11T16:34:15+0100, Alejandro Colomar (man-pages) wrote:
> Thanks, Branden!
>=20
> And [+4n] is because you can also indent negatively?
> But I guess I can omit [+] safely always.

Yes.  The unary plus is redundant for both .RS and .in.  I see it used
much more frequently with .in requests, though.  I think it has to do
with the greater awareness of formatter state one has to maintain when
writing in "raw" roff requests.  People include the plus as a form of
documentation.

You can indent negatively, and even to an absolute horizontal page
position (with the '|' prefix).  I don't see this done in real world
man pages and I sure don't encourage it before the question of how well
non-roff man page renderers (like mandoc) handle it.

Here's how RS is defined in V7 Unix's tmac.an:

' # increase relative indent
=2Ede RS
=2Enr ]\\n+()p \\n()I
=2Enr )\\n()p \\n()R
=2Eie !"\\$1"" .nr )R +\\$1n
=2Eel .nr )R +\\n()I
=2Enr )I .5i
=2E}E
=2E.

And here's groff's definition of the same macro, which hasn't changed in
20 years[2].

=2Ede1 RS
=2E  nr an-saved-margin\\n[an-level] \\n[an-margin]
=2E  nr an-saved-prevailing-indent\\n[an-level] \\n[an-prevailing-indent]
=2E  ie \\n[.$] .nr an-margin +(n;\\$1)
=2E  el         .nr an-margin +\\n[an-prevailing-indent]
=2E  in \\n[an-margin]u
=2E  nr an-prevailing-indent \\n[IN]
=2E  nr an-level +1
=2E.

The leading plus sign when the macro argument $1 is interpolated ensures
that if the caller doesn't supply a sign, the value will be interpreted
as an increment when updating the register value.  This is part of
general register management syntax rather than anything to do with
indentations or page formatting.

An example with very simple register settings may help elucidate this.

$ nroff
=2Enr A 2
=2Enr B 3
=2Enr A +5
=2Enr B 5
=2Etm \nA
7
=2Etm \nB
5

(I'm sort of making nroff work like a REPL here--an underrated approach
to learning it, in my opinion.  I typed the requests, and nroff [really
groff] wrote the "7" and "5" to standard error.)

The interesting thing to me is that .RS in V7 doesn't do any indentation
itself; instead it uses registers a bit differently.  And the register
names are limited to a two-character name length.

For the attached document I get identical output[3] from groff and
Heirloom Doctools troff, which is a direct descendant of the AT&T
implementation.

Regards,
Branden

[1] https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV7/usr/lib/tmac/tmac.an
[2] 19 years for the very first line, because groff introduced the 'de1'
    request at that time.
[3] modulus groff's use of SGR escapes instead of overstriking to
    achieve bold output; see grotty(1).

--wsds64sgh2aq4hps
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="RS-negative.man"
Content-Transfer-Encoding: quoted-printable

=2ETH foo 1 2020-11-12 "groff experiment"=0A.SH Name=0Afoo \- fool with gro=
ff=0A.SH Description=0ALet's have an indent.=0A.RS 12n=0AWho will be the fi=
rst in this campaign to=0A.RS -4n=0Ago negative?=0A.RS |5i=0AYou?=0A.RE=0AS=
omeone else?=0A.RE=0ALike that guy?=0A.RE=0AWhere are we now?=0A
--wsds64sgh2aq4hps--

--kevfm4cwoex3sqdg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl+s35MACgkQ0Z6cfXEm
bc6iChAApgz300AoipMT2wioJT1utfvnOVGQ9RcTBVfFDa/SmaoN0K90ctGMp4Ib
cwNNr4vBIWvAEICMj1cJcKl1VcQWaPgrj5taB6UTHUdRMyq3eoZHelV30OqtMQb6
cwBT0fovTmVUMFJfjosv+wIx4WnzzTgy+tnexvsTW624WOQxrLSG0obPBPgyIoTd
l8nc9uOUY4o8ana27KbQbrcxzddkTNlbrwmXDBVApew+m4N6PKLu++s5iMB3+h11
/pXqb5Il5NL50I1haYXhLpMXqAhmxlSy5ODDgYK1zMU3jWQAVn1XSnmcPWWOv/cO
suFON3YD4uyQ91z+t903j/7UXy/OlHBD2XFpBQJt9alHAYczm1sK601RUzRRH3+1
8J3qZKFlMJFmc2/NcGYAonga7VYDu+WkJjvyvJBaxTNyHalNBwd+5XN8paHTeOdv
XilJmHOWMkJhIieR0TS7YgOdn+gGQm928aQjFg0JUdXkmmjXnDt8JCgXh8bP+Bov
lYydqSWVjpeOmSeHt2tbVCEwoBQn2Bb7nQFKBNygsxfcG5SuS5mVSRZI9HfGUJDb
FNvePrYyJqBKbVLAJrQ99RhmEhxWrA57uCu72yM6kCvghkgyWkBVdmkj3V4af6nQ
XlJVWYyV0/t94yQYby4tlqrViMLDbo1UzKV9xMRe5nbu31DwO1U=
=F2jr
-----END PGP SIGNATURE-----

--kevfm4cwoex3sqdg--
