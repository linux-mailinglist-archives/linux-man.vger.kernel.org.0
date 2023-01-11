Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D55A3665F25
	for <lists+linux-man@lfdr.de>; Wed, 11 Jan 2023 16:32:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231289AbjAKPbj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Jan 2023 10:31:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239151AbjAKPbg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Jan 2023 10:31:36 -0500
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4D67E014
        for <linux-man@vger.kernel.org>; Wed, 11 Jan 2023 07:31:35 -0800 (PST)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-150b06cb1aeso15870622fac.11
        for <linux-man@vger.kernel.org>; Wed, 11 Jan 2023 07:31:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hsuRELHHpAz6l4mG4LDgxxpiOrRdLyoGSG/6i927mTY=;
        b=GuePffxXDCZnyOXpWxrggIZC06oWbQvMTN6aTOR23g3PKKHnVC1mOC07zjRwAQ7Oaa
         ZYIF7x1YwAAQ21h1o5YWxTKlkBll1v3aLUuGF04+4CfG4AbkVIqB6XyfRywVefu8n5tO
         wMJJ+eHVbj8hpHfo6SrKiQbwq1wJ9YOAziGg58k2Xvnoe4VqtZ4R/Vz5urexN6Qa2xWn
         vmWrn/wtDmfqA7oDBykXc2pnkdsNwWOgVZOvKG2JBMZe/vrSswQG3Dgh6jwOCTyVAbX5
         KtKvcHtAdcJaO8jlmJEt51R3CX8bKR3QmhuzGClfEDkqNUf8oNWL1DTbO7pm6UT70TgG
         hPoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hsuRELHHpAz6l4mG4LDgxxpiOrRdLyoGSG/6i927mTY=;
        b=rS8y5Lg5IBGfENLNdtKe4xlpDcEsHcZleoFKjpRjACaaqFQGXPt7uNBZ3L1c7wnEjv
         m26YtpMc7aMccJkFAmRacxTs2PhJk+72n/ba74jReoA/e3I8ika2gOTQBUXnquBhLTnF
         /cTwAnfGaqNCGovMvoQuBdqWaKux2Qc12mj5sq0p/AViL1l5eLQF6uJnqdwka4qSpWzN
         Wfx+zWgif+6hTGHP4F/D5CNiqvU/u3M5xYVWXr/9IbNSoIy+rMP30aj/w6dpOrqELKYu
         Azdtvc+ZFTZ3IdaS2Pm5KtA4yCPQFpNl49/ozl2jphYcrHnWMbeI20DeevQeQOkX3ZbH
         4Lpw==
X-Gm-Message-State: AFqh2koNzG9qnMZvT/YBw3cdAchba6MwitWf6z0KHdDnUtXyKDai6GjO
        BuX3DEGs1cBcUGM1bwgMLgfe95ivq18=
X-Google-Smtp-Source: AMrXdXuGZhSy/oqUbbSIUTOiXU8xhQlSE/Ej8vEWMK0lDJxetMDQfl6YVLs460zkon976aHodLVkbA==
X-Received: by 2002:a05:6870:2052:b0:144:1078:ed9 with SMTP id l18-20020a056870205200b0014410780ed9mr35187958oad.25.1673451095180;
        Wed, 11 Jan 2023 07:31:35 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j1-20020a056870168100b00144e6ffe9e5sm7474504oae.47.2023.01.11.07.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 07:31:34 -0800 (PST)
Date:   Wed, 11 Jan 2023 09:31:32 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        groff@gnu.org
Subject: Re: man page width limit and example indentation (was: rseq(2) man
 page)
Message-ID: <20230111153132.jhvt77pcrvmcxtbe@illithid>
References: <095c479b-baed-9d11-08a1-e698f59763d9@efficios.com>
 <425ddf00-24a1-bf02-29f1-937ba1545020@gmail.com>
 <71b43f20-5d6d-f3f8-b3cd-786dfbc8d34d@gmail.com>
 <c8cb6136-6924-4fae-f4bb-981dec2e1952@efficios.com>
 <71e6728d-c2a8-e646-5c6c-2de8dfa982cc@gmail.com>
 <20230110190311.fk3outm4x2ojl4dm@illithid>
 <b9ab937e-9aa4-59e3-f176-2737f41c6451@gmail.com>
 <20230110213930.qrp6fdyxl34jns5t@illithid>
 <52043c93-aa58-9725-c20d-9edc1baa9131@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3wuzfdyowmsjknjo"
Content-Disposition: inline
In-Reply-To: <52043c93-aa58-9725-c20d-9edc1baa9131@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--3wuzfdyowmsjknjo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-01-11T00:30:16+0100, Alejandro Colomar wrote:
> On 1/10/23 22:39, G. Branden Robinson wrote:
> > Well, some of it, I'm still trying to fix for 1.23.  I _still_ have not
> > heard back from Bertrand.  It's been two weeks.  I need to start
> > considering begging Werner to come out of retirement just long enough to
> > tag and push some tar archives.  :-O
>=20
> You can't do it, right?  Or do you?

I can create the tag in Git, but I don't have a GPG public key that the
FSF recognizes as having a "maintainer" bit, so I cannot validly upload
a distribution archive to alpha.gnu.org.  Apart from signing issues, I
don't have authorization to upload there, or know the correct procedure.
Since this is an RC, I don't need to be on a whitelist (if one exists)
to email info-gnu, since only final releases are announced there.  The
plan was to announce RC2 to the groff list and the GNU platform-testers
list.

I suspect the only things that _strictly_ require an official GNU
maintainer are generation of the signature for the distribution archive,
and upload of that archive to alpha.gnu.org.

If I were in Bertrand or Werner's position, I would prefer to perform
the Git tagging and archive generation ("make dist" or preferably "make
distcheck") myself.  But AFAIK there's no _technical_ barrier to me
doing those things.  (I already "distcheck" before _every_ set of
commits I push.)  But in theory I could just hand either of them an
archive of 1.23.0.rc2 and say "trust me".

> Yep.  Now I understand.  So yeah, I never try to guess how much the
> page will take up on screen, and just check experimentally.

That's a sound approach.  Nevertheless I would like to make tbl(1)'s
output more predictable on terminals for all groff users.  That should
lower user frustration.

> You're right.  I don't remember what was the exact issue we had with
> it.  Anyway, .in just works so far. :)

I really like weaning man page authors off of *roff requests; I may have
to take another look at this issue someday.  :D

Regards,
Branden

--3wuzfdyowmsjknjo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO+1kkACgkQ0Z6cfXEm
bc4yWg//Xa5eA+DgavQFO+PMKjOFSfWLkKk/Tw4jJ40cN/gsOvIGMm3HWdmXm0Ai
oXxTuvi6Mn+8Cw5Pp128WnVUxb4FTpm/hqhKATkzhr7LCynOuk17Ifdm7A6SzM3u
ALrv0LlPsSlagEyl4RcJ5DZ02zTofzg3J2kFqgbYZrfmOJpKzr5x7svrO+bgsp1o
brasd150JNQRYBXqeUk3AeCkNeRSHt0kB+GpaIEoUMEskgMJodvCcp5cnC0faOiA
fvJ8lKMEdLAl/nun9hePVWNM0BHhdtxoCtkcPVAr+7ycjQWhH5znIbmhitF0Y8Cj
vP6zA38Z6Zmq1tM5E6wZnmZ0RkoJ8FctqxNcWax3vgZoavvN8Uc4+tXv8aXV4B+9
It9OK7GrDul0DhVs0Om1hM0AhFiUKhQIr8wuizI/s6opnsT7ZTh2L7MAhwWnJSj5
iPAGpdf8gJFp0n0/dPTrtHh3tm1KTkeQ3t3HUaqpM5BG1g2cGGkdqq7VJ7berm5J
5beNwi/7FZHPaWsvtqHCr8kQLaO+pKgzFIjVvDfA41SDxHhj1FSHgDqTcc+e+cRs
/egYisez8ZIFtCYs0CrDCEMjp7UK9IcK5UNFho6S3r9qCaS3vptnQi3Yopnxz2Lt
oYeuBGN3vTT0MsqXFNfQ5uGv8q5iJDVKO+2xM9D5NeXyNhDjwE0=
=/iBq
-----END PGP SIGNATURE-----

--3wuzfdyowmsjknjo--
