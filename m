Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BAB0661AAD
	for <lists+linux-man@lfdr.de>; Mon,  9 Jan 2023 00:01:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231292AbjAHXBE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Jan 2023 18:01:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231156AbjAHXBD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Jan 2023 18:01:03 -0500
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com [IPv6:2607:f8b0:4864:20::c34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AD5363C7
        for <linux-man@vger.kernel.org>; Sun,  8 Jan 2023 15:01:01 -0800 (PST)
Received: by mail-oo1-xc34.google.com with SMTP id t15-20020a4a96cf000000b0049f7e18db0dso2054733ooi.10
        for <linux-man@vger.kernel.org>; Sun, 08 Jan 2023 15:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GtqA3ofVOjcWLdTn3sICmjKFa9RCI3vdMJvR6MOeSts=;
        b=h3M7c7gjmV69vmGnneuKuOaaqjCXzBsPFEVRGnHuXSsRFd/Urt6aLkW9GePaxfRCE2
         iUQnN2xTk4ffApfy40htuLiY3GVKYTr9OMnSsmavJ++1uKx5sJERBAVPWjPnszeL4GAD
         vm7X3Va7S7jFJDXLc/vYHYhv5PL1fQZO2sRC6J/EGFnBxaKPH1rfMAuu+Is6Ysh/f17W
         i+sMh3lN3Zfy8r0dxJlQ2+J3JbSvy5dxmy894AInyE/PgIlxV7xXavAnsU9mGUGRTFu+
         5NPnXiUVe70BZMSGCHErkbEpCclyWTPBOE4stQBzHIBfmVstI/5qjamRLF3UT74zxpJU
         NEYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GtqA3ofVOjcWLdTn3sICmjKFa9RCI3vdMJvR6MOeSts=;
        b=Q4gMLgwNzvbcHfZUQcvdWtxQsvKrlBKQJ+EyMMX06Omw8lvXSMhBwo5O7FFj8EsN8G
         Tr4csU+Q2MleIXYhvJ6OI/U86cFMUnYGYGcUtk02x6Mt+lUighPOUjhlk88KbYtBXle2
         uyXMg1RPbIGb2LEzRgioZpW8IoXtJOncPq4M8yy2n4dtKaL/B5hGnIECJSuU8D/CNb6m
         FAAd7h8TrCh8cL5ee9JrFrZW5S+Dd0jmyrLBU4WTJDtrks0196QSVEkSmzVqAg4hpZB+
         5QbVrWsrtbyhh1enfgdcQczckgJDKoJhUWeEY2uIVa6/g2EBEHpR/5P4IgmTTa6XfAZI
         orLQ==
X-Gm-Message-State: AFqh2kqwo8nMRaW5UtV/FcJKmAP7hGQ+uqwKOMYf4PVNx6/mltL+ZQLj
        zCKDIKJeYbwERUbA61KuvzbvzmM9M2A=
X-Google-Smtp-Source: AMrXdXvX0pOSpSLUjxxFqBlAMdIlfauY2JHmVyI72cmUPMc5/RCKOPUD26BySQf6IGZm0G9O+mLP2Q==
X-Received: by 2002:a4a:e706:0:b0:4e6:f87c:bdf8 with SMTP id y6-20020a4ae706000000b004e6f87cbdf8mr13731638oou.0.1673218860809;
        Sun, 08 Jan 2023 15:01:00 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id r4-20020a4aad04000000b004a394578e14sm3420877oon.32.2023.01.08.15.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 15:01:00 -0800 (PST)
Date:   Sun, 8 Jan 2023 17:00:59 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v4 02/10] ldconfig.8: Revise and update for glibc 2.32
Message-ID: <20230108230059.fxigj32oqh6p6wd3@illithid>
References: <20230107095422.44loq4pzsfjktvpz@illithid>
 <43a8427b-4038-054e-cea1-c54417bf65bb@gmail.com>
 <20230107165324.c2t2senoh3loyof4@illithid>
 <a7647f84-d15f-aab9-94ea-2ddddf397407@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="mqoqxhkt65m5hoe4"
Content-Disposition: inline
In-Reply-To: <a7647f84-d15f-aab9-94ea-2ddddf397407@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--mqoqxhkt65m5hoe4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-07T20:39:01+0100, Alejandro Colomar wrote:
> On 1/7/23 17:53, G. Branden Robinson wrote:
> > > I think ld.so.conf(4) might be a good manual page on its own, and
> > > ldconfig(1) refer to it.
> > That seems reasonable.  Can I tackle that _after_ the current batch
> > is off my plate?  :-O
>=20
> You mean apply this patch, then prepare a new page?  If so, yes, that
> makes sense.

Great, thanks.  Will do.  I'm piling up quite a few miscellaneous fixes
to pages.

Regards,
Branden

--mqoqxhkt65m5hoe4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO7SyoACgkQ0Z6cfXEm
bc5abA/9GhQufaYiGufrsChQGckw5AjWHP8YEjNP0ekaXBvwtDA1JN4RZVR5Mx1G
ta4OauaP59voL81sYtvj9n5NRA5faUmLWv8j4lzQNxW1mSqOen0H21Zn+wTK3L/W
J9g9GnkIVlFiKUQwdm8UGaIBLtuu1fnyO8fKqDvxUN37ldLLHS9LPQDu4w6qsaJC
IHwCPT2KjNUj3PswTm9IQnAZ8Q0xdvfKki1R9uv0j/RuCYp3vcV7wTAz4mNgKUtA
lHkolFypcyIc3peinlsp/qdAHK7zmPXiGl4C+eN7TRGgPQnLHMV21+12Pc+qmNbi
mqEBoSV0+60JqDV5hxsXdDsketIAPo/31GQMW7UIwy96aDpVE6zWX7bySO1wce4i
D3BDLAScPBBXFAGSotmU8anhfbF2FLKkz640AcocWM1nWlFeGz+y0y+e6u1mkKKF
81JEWHwW39gwQT6Noe6hqkyzMmnGlBcE1VR8IQuRf9B3QAFeEUjp3Pny2KrqpDTA
PgtAzI0iFwsg4vesz4b4R99IMe+7HbnAsBVEMOd/NY0M/bBu2TcLOk/xE504szly
sVA1Lke4sfbv0z4ArL7LwJl2Yvt0adFsClQBf9N43BgpfaHm/47oYGiQmL3zRKtR
Z5e9VjC53EuoHDa6yqF3/rFDJ+j6YXtEqAN9hudRqEdwYYZ8GLg=
=FwXK
-----END PGP SIGNATURE-----

--mqoqxhkt65m5hoe4--
