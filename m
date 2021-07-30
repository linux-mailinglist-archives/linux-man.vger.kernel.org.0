Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A12133DB069
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 02:51:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbhG3Av0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 20:51:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbhG3Av0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 20:51:26 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9A46C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 17:51:21 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id i10so9045370pla.3
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 17:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7oMNuoppQe1qLKmMOUERRktb+q1RnOAPIUmVZa8Hza0=;
        b=ny5sQWOp0K0XwKteE4toGN9bAt4KTvP6Z4v07Zf17Q9tWCCYu9a7+9HjAOoV9vcE6J
         F5dvqIJi9wFMrXZhT/ZiayUbi3tU2kY1szATNCiTPmv07uYWL5xmFnTvHx0c4azOZUDG
         wPoO2xR5ygJwP6w6EdbHgYu29ZyvBwcFRBoh/JISArVPDepZmE/09ZJkFMuyaIAAj+t+
         JQ174DJJp8A526nSGqaMvJYx4mvndj9mQTJIaC6V1lsJmCemqOpabR/Ol7iqhZgy8qsa
         V74BIk4SOmJ4UaYOaMH6Se8K9I8qfSsROkeAUXGlabadlbrVTNEqxKgsUercZG2F/e7z
         vZPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7oMNuoppQe1qLKmMOUERRktb+q1RnOAPIUmVZa8Hza0=;
        b=X581PuJjiMLNVfTlb6oAdZFZs3tPkyWSubsF7yC/OVqEIpHfAgblh4opedR0icjKQb
         KCBEFCSn5N4oXdj2vqlA5TmlALS5/1mDYUBan8ugd0MM7zrDwr1x4SrRMRaK19x4YAW+
         jVW5jhzU+BwAEsedEU4yVaDqGmk/5HUC6fwZBlovnw1Q+Eb7f8JBrvxQZ37iyS18aEFX
         4WUiwVXgezmtxbBflBs//9+n4XAFLnO+nSD52iFL95EvKkTbbHQ630uH3Z4nD4GCe9O9
         HFhZVM38YDpwpnbjPOC9cDwA6pmS7KoHtIzmyQwGeZM6PkRMcgYLvfVS0Dk+sAVVmm9p
         zvYw==
X-Gm-Message-State: AOAM531BiDTmJwK8YNm4HdnVTKXydXHZd2FZ4pkvU4kyda0NZogH9SQn
        mngcX1XFfFCaNwjanuGhDF0=
X-Google-Smtp-Source: ABdhPJwyvKAVrBt7IPWxV1Ztypm/kY4iXqO97PyATcNfCaHgTqp5igjHib26z/t1j1mB+sQoAA3qaA==
X-Received: by 2002:a17:90a:d3ca:: with SMTP id d10mr202502pjw.35.1627606281603;
        Thu, 29 Jul 2021 17:51:21 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id w21sm26161pfq.40.2021.07.29.17.51.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 17:51:21 -0700 (PDT)
Date:   Fri, 30 Jul 2021 10:51:17 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: [PATCH v3] getrlimit.2: old_getrlimit/ugetrlimit and
 RLIM_INFINITY discrepancies
Message-ID: <20210730005115.esvyqw5ds334qcxh@localhost.localdomain>
References: <20210729154401.GA22699@asgard.redhat.com>
 <20210729223535.qvyomfqvvahzmu5w@localhost.localdomain>
 <CACGkJdu1K2-dER+WKwjBt9Yweteb=GnpvpeXq7OFij4YWhd09w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="liu2bgylmwvdkepb"
Content-Disposition: inline
In-Reply-To: <CACGkJdu1K2-dER+WKwjBt9Yweteb=GnpvpeXq7OFij4YWhd09w@mail.gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--liu2bgylmwvdkepb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2021-07-30T02:14:56+0200, Eugene Syromyatnikov wrote:
> On Fri, Jul 30, 2021 at 12:35 AM G. Branden Robinson
> I'd stick with the current "constant" usage for brevity: system
> headers do not tend to employ const symbols, especially
> kernel-provided ones, for reasons, so "constant" meaning is more or
> less clear in the section 2 with that regard, albeit not totally
> technically sound with respect to the C language.

That's fair.  I don't expect all my reformist suggestions to be adopted.
:)

> > > +However, in order to preserve backward compatibility, the routine
> >
> > s/routine/function/ ?
>=20
> I followed syscalls(2) naming convention here.

Also a fair point.  Yes, I see that usage is fairly thick in the "NOTES"
section.

> > I call this a "Kemper notectomy", after my colleague in groff
> > development, Dave Kemper, who has pointed out that we tend to
> > massively overuse the phrase "note that" in software documentation.
> > We write for impatient readers.  Everything we say in a manual
> > should be worthy of note; if it is not, it should be deleted or
> > moved to a place in the text reserved for supplemental commentary (a
> > footnote; a (sub)section entitled "Background", "History", or
> > "Notes"; or similar).
>=20
> This is literally the "Notes" section, though.

True--I wasn't aware of that before.  But by that token, you could say
that the "note that" phrase is now redundant for a different reason. ;-)

It's not a big deal--I mention it because I've found it a useful prompt
to myself when writing: when I want to say, "note that", what am I
_really_ trying to say?  "Pay attention here"?  "Danger, Will
Robinson!"?  Usually I wind up either dropping "note that" or recasting
the sentence to more clearly motivate why a statement is worthy of
special attention.

Regards,
Branden

--liu2bgylmwvdkepb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEDTPsACgkQ0Z6cfXEm
bc6KIQ/9GoI7TV9+6BVmMD8l7uF+nHXOvcz16ChtyBN+bcyYF0hj+5A78fTmtTT3
cwt59qWOWqaEt6GocvF5fbHKpvkI4WQ5oRTBrrblI+p5ZJwD76fLVbmC5c5Qno4Q
1cXetzmB79V89/KmimCtR+DYkc4Cb576J8M2AMlp+iCu2gdL48Ebpkdov/scQa+4
g1gDFO2W28XonM/4Bre4sKYu/1nV9iiKH1H4+D6UWYpyJE3Pmk4Bg7PlsCSpTFNU
o0WO6KfbYnS1UjIAEXFkPdVtPijUCDDKNPFlqG/vOQJciBkLlPIJCOmTThdfKKHZ
YxCdeBHCD+HhxXP8Fk9jcXHyBGgK+gD4JrqJRABVaWqepcWwzS7c4EdDWK0cgZW6
uWknh9P8/K3Nqhd4+r6tV+bElrxeKttN8iMuCNW+V21D8fVt8lsf18qD4T1VvuKb
DpY5l0GWoXtFTb5FSOFQ4tYCFWbFcO00l7G1e8xhNz2eayvyPyhnPor0YxLqDB1W
EtI3D2At1EiJxQR6F99EvmWz6QYZpvEZLx9j1PDq9BFNBt2KPyR/aJMChovyGaJp
4BarxEx9NOrBCClI+6cMiWIb0tGRdEB5VXk7LHK7Lsqvuu9sDKUdSA70EOf4YuJA
a2z9kxJicPcErgnzyShJWxVidsV0tgP/ulUl/P/oH2yfRovL7Qg=
=VlCq
-----END PGP SIGNATURE-----

--liu2bgylmwvdkepb--
