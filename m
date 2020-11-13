Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 601572B16EF
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 09:04:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726148AbgKMIEL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 03:04:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726147AbgKMIEL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 03:04:11 -0500
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DCB9C0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 00:03:58 -0800 (PST)
Received: by mail-pg1-x52f.google.com with SMTP id 62so6453136pgg.12
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 00:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VO6DL3HcWPKbpBQJ9mQ8sD1brtnb97ZUT5A5TnB53SA=;
        b=iccfZd2MPyPs+/nfwuqxUymDDvi1prq5wyhCSCvLCZro24thI9UB8ghTx45so/Q74I
         +5qojkBSS5EAHcBqnQZMBZWt4K8Pa9/QCqwH11t115eHQdINqhZmPNaawF930+ucj6cC
         lU/R1x/aV99tma9QQxtTcIVNcvS5Bb4zqEG2zABl/45rQmf9jpkgtEVZATdAee1EaIly
         /FXeHthjs5Zzqcm7gNsg0PedukJiB4s+fYLuyYRhIyfwsy7S/3R643mYj3yK3EM/KMMo
         xkJ4HqlnyoUrBMgHbH5exbxuTwfxegV1goPAh0kwCWnGGeTbmjrmO6LmaTWrcuV1+Edx
         JLZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VO6DL3HcWPKbpBQJ9mQ8sD1brtnb97ZUT5A5TnB53SA=;
        b=PBRf/L7wqBogplGgLD+8rSzQoIKH7jvl2WyS5YNUwYIWnujlcgdeq/GF/Ginvw3Rob
         BqLQHyish9+nrC6WvmCQUP7OeN29Uf6dRkvtY+50w8nanIxErByY96Zd16z2v9wjDsQF
         lhI6k8LcqM/VVANhF6etx0WOwN5dI64Wr3x+ryrtTPPWj2T949RUOd7ks2iYV8nmlv7H
         hDk8ibahvv3xiDpQ+xxe7P0VKJODF179lHagz5+9cLUG1icnRZdKL4iy3tK+iOvLdYMk
         0Rl1j7SQMWgXxqNUOtao6wfQtmbcItRofEewSEWPY29qJ/Z+NLaAFQv8A8e1bm+aLrc4
         le1w==
X-Gm-Message-State: AOAM533OsOOjXeo93BXEAz0+x1mm/aIn3mIVreBVwBNXda1dEdZ+GSSr
        zpNT2PSWxJBuKX0MvvLhmJ2mA5j9dqI=
X-Google-Smtp-Source: ABdhPJyp92snmNAofK9RA6gt+WVYGMIuE6eWCxQdQr7arP6rq+wQtZbV3XY0R+GDfyX1C65outlOZg==
X-Received: by 2002:a63:db50:: with SMTP id x16mr1142356pgi.205.1605254637822;
        Fri, 13 Nov 2020 00:03:57 -0800 (PST)
Received: from localhost.localdomain ([1.144.241.9])
        by smtp.gmail.com with ESMTPSA id fu5sm1216855pjb.11.2020.11.13.00.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 00:03:57 -0800 (PST)
Date:   Fri, 13 Nov 2020 19:03:52 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, colomar.6.4.3@gmail.com
Subject: Re: .RS
Message-ID: <20201113080349.vp6ggswc2jbhseki@localhost.localdomain>
References: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
 <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
 <c6919fec-4a95-888d-93fd-ecb254ec2377@gmail.com>
 <20201112070915.ejttfz3lu3sphkkp@localhost.localdomain>
 <1ae93b8f-c6e2-f11d-0844-a8cf702f933b@gmail.com>
 <60a7fa20-d41e-12d9-a81e-558512a74f0c@gmail.com>
 <eaee2c6e-cbb7-94b2-f6c4-9039d184e129@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="nyhelkivr364tbi5"
Content-Disposition: inline
In-Reply-To: <eaee2c6e-cbb7-94b2-f6c4-9039d184e129@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nyhelkivr364tbi5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-11-12T21:57:34+0100, Alejandro Colomar (man-pages) wrote:
> > * [.in 4] simply doesn't seem to work at all.

It's important here to check what request comes next.  Many of the man
macros will change the indentation again on you.

> > * [.RS 4] and [.RS +4n] seem to be equivalent.
> > * [.RS 4] is different (worse) than [.in +4n]
> >           in some very specific scenario:
> >=20
> and [.in 4n] seems to indent to absolute column 4.

Yes.  Many *roff requests are documented like .in is in groff(7).

   .in =C2=B1N    Change indentation according to =C2=B1N (default scaling =
indica=E2=80=90
             tor m).

The =C2=B1 indicates an optional sign.  Where there is no sign, the .in
request performs absolute positioning.  I might have led you astray by
bringing up the "|" operator before; a hazard of my unfortunate tendency
to ramble when composing emails in haste.

The '+' that .RS forces as a prefix to its argument before passing it to
=2Ein prevents the _macro_ argument from being interpreted as an absolute
position (even if the "|" operator is used).

=2ETH foo 1 2020-11-13 "foo 1.2.3"
=2ESH Name
bar \- baz
=2ESH Description
foo
=2ERS 4n
indent
=2ERS |5n
bar
=2ERE
=2ERE

In the above example, "bar" is set 5 ens to the right of "foo", even
though we tried to set it much farther left.

Regards,
Branden

--nyhelkivr364tbi5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl+uPdoACgkQ0Z6cfXEm
bc7N+RAAhoC4UI8gxglIYh64fo2SNuinioqO6ZsRdgsAmb5qVdBQfa0KZHYvCmD6
edz5XFx+ZhrXwlTx3rTwWR6RPcMoDREBodoUvnmLqXLAsr5ZpBG5jWEGdH3AByIG
mRn0DsQvsh0fyZKymclPypnlJ8Trwa6TAT+mYl/PIS+FCWwP4sXKgs7vH32uhMJe
VaCAXL65RCUt9SJuCwjpUbJiFKNP8HKmpVK/LOPWMkOHel4WtBVnc1dB4F4Bbpvl
qV+PYnX8Ra70S5jNYM1qP24osyPsoXnSeJgIoXdRWQQl3PhqXzXCocwugpUVG3R2
Za0m0Y3Ul1Zt7GRtAEg3NKh7GZtlM3QZ3EZoXwACryAJzBfXbcSCIRiKzWWlX17/
o7IpaMxcB1Vb8Vj2XWu+a788IIPnnAKUXvwuzOIdvCy37dmqrAb3cC7WeTl/46q9
/6iBrNX/WEMqfOx/smcedg5fscDsBvRir3OQ5VitNXwAnbYxZ0wLV439IGEhnJV6
sMfvsC9/Tc6yr4KBgxaNtLwAoQYE200LvX8FgSz/qK4ZZ13ieyO4gpyoA7585P6s
xrxZgNQgpEr/4/b1ME9NljfC2rDkIR3Vtl/pEmE+aKepWKVgGrQQvkbsw66g2NoC
RgJdyTTorASngfktJsjn7wveHhC++PnLiUVu5ZwdsEBJ6uJiu6Y=
=DS17
-----END PGP SIGNATURE-----

--nyhelkivr364tbi5--
