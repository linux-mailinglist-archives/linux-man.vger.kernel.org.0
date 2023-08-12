Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A438E779C5F
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 03:48:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234969AbjHLBsN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Aug 2023 21:48:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229793AbjHLBsM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Aug 2023 21:48:12 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E068830DB
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 18:48:11 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6bc9c01e154so2281129a34.0
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 18:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691804891; x=1692409691;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9VvuEb1b+4RhDYAeCDktGOxlBmAog9oe2RijEfIMUIs=;
        b=kjRVOoCNB4+yt6FTJkBAOGDn24sNPmGM+a2ksK+UGa4kFwU2gR7fsCZy093pZGzk9F
         sNL7UdK3QVaqxLhD8dzUoCdA/ZawVQ5ZBv9AoHI2NjdT1t2JmU2QX07k4lRR1ZQIsCLP
         RX1sFt6v1+AOvdMPGbqU3HIV+1DfNaSZdH5yUgD/HDeKCpmyBvrJFMg88MERtHde5WEQ
         mTQoytiHvHg272URI5+fO8ZTYtY8VTOByP2vx6RG3yv6GV/P4vZoRbwFJ+Izw0rj8GPA
         v6ipgiIIsLlA/1SQH/ft0BDdgXpIHiJQeOIRdfHbyvMLWfA/0B3gqPfdvjn3lmaNpYZA
         p3Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691804891; x=1692409691;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9VvuEb1b+4RhDYAeCDktGOxlBmAog9oe2RijEfIMUIs=;
        b=C1Duny4gPHJzrnZaxSljqgyLOpeA0+ae68qb0RDCYRG1w1oKRromQvkaI9jVJncpaF
         8onHiISoGl3XjJwPvQpOBI2JNjtNEOOXazZT3dmyiyL5JacSYJADV5VfrXsomDoH9HHt
         tGejNz8u09pVoi0uziuDAwrYDZGKdieolRwZK4J7KlpkUbj6iPf2INFb/njhzMzsj0B1
         I8yt+/3ZKWCvJ0GgjjkquIdxzavu6DkLoFHvuGdq5OI9JHV/Vu0SVDtNCAKNW243shC9
         ObGChjW8afUaapudTOqh/fu+8FovkR7aYf0GTsavFaXEY7rBTmEbMRbob9hPyaH0x43E
         GtqQ==
X-Gm-Message-State: AOJu0YzcuMmoS2LIJ0GCdmZaaVWHcfiePVFqFdMMwuj9IToGlORhjwud
        fiQCFmWPENQKR5DQP3fK5I8=
X-Google-Smtp-Source: AGHT+IFDbjTcYZLQo0Nt7OdU/EuvKIP8b3lLXuhCwlWNpkERFPN6yfVl793XWje11CjoxwRzI6w2Cw==
X-Received: by 2002:a9d:468c:0:b0:6bb:3032:55e5 with SMTP id z12-20020a9d468c000000b006bb303255e5mr4280817ote.9.1691804891116;
        Fri, 11 Aug 2023 18:48:11 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id m13-20020a9d6acd000000b006b466ed0484sm2172034otq.67.2023.08.11.18.48.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 18:48:10 -0700 (PDT)
Date:   Fri, 11 Aug 2023 20:48:09 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org,
        Deri <deri@chuzzlewit.myzen.co.uk>
Subject: Re: No 6.05/.01 pdf book available
Message-ID: <20230812014809.zhhsz52saqwxbyh4@illithid>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>
 <ab67aa6d-712a-47f0-e694-01592bb72cd1@kernel.org>
 <01d3855b-65dc-8b99-83cf-ebe1f97a2d83@Shaw.ca>
 <ac4a6675-f96a-cf39-f2c9-381d6ce0733b@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="oan4dehvlf6khej7"
Content-Disposition: inline
In-Reply-To: <ac4a6675-f96a-cf39-f2c9-381d6ce0733b@kernel.org>
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,URI_DOTEDU
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--oan4dehvlf6khej7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-08-12T02:02:49+0200, Alejandro Colomar wrote:
> On 2023-08-07 18:21, Brian Inglis wrote:
> >>> $ pwd
> >>> /home/alx/src/linux/man-pages/man-pages/6.04/scripts/LinuxManBook
> >>> $ ./BuildLinuxMan.pl  ../../
> >>> [...]
> >>> Failed to open 'DESC'
> >=20
> > That annoyingly minimal message provoked the patch submitted.
>=20
> Yeah; it took me some time to find the cause.  The error message
> doesn't even tell who failed --was it the shell, was it gropdf, was it
> troff?--.
>=20
> :)

This sort of thing makes me purple with rage and I have tried to purge
groff of such unhelpful diagnostics--especially those that are uttered
furtively by programs (or, worse, libraries) that attempt to remain
anonymous.  Doug McIlroy was telling people to cut this crap out in 1986
(or maybe a decade before that, even) and people _still_ ignore him.

https://www.cs.dartmouth.edu/~doug/reader.pdf (p. 9)

Much work was done on groff 1.23 to fix this, but I'm not certain all
such offenders have been rehabilitated.

https://savannah.gnu.org/bugs/?52463

When you encounter one, strike it with lightning.

Regards,
Branden

--oan4dehvlf6khej7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTW5M8ACgkQ0Z6cfXEm
bc7qJBAAjU/xFwwTUNhGvu/3f9FiNozTpKk6S24uls6eeQpt+iMzlCog2YoHUVV/
vBMyLPbgc2vMDyboS5NEky9sWF+ljTzDoa6F5lfEuvw3bAL2A4OJsgO/QzYrlp6r
Sn7MkkBktwmz5RfJqA2xZVgCtbF8rD3a7LeR5ACK2wILv/iBVI7Zhkz/C6S0/+vZ
RXOHOKzyJ0pd5T7rHGOKRP82zuHvx3sOSr9PkoytzQIk2uP2hYVQ7OsLJYYJ7jI0
sdjyloL01x10NZRERSsI/OT9tg45Ix4S31+tXBZd79xmUyhpdOAK32bH1C7uLzSJ
n9kuc2sPjhB9YsR1M2Zp7k9hcWmJt65ORkimHqk0uFY+06nJSkup+JeOdqphlskp
ypZbdZKLfnhcUTnSSzCVONIg8xzorSeOja/mDerkLQjzb2bpv5jxqfZa+i1ni3do
5+k6co8UxLaQ6oys8XzT0dzeuNPWf7RM7AYCUoUGxwIDl/KTYEasvpeJW3qrMML1
4cDTc7AUDphVNVRHGoUgqEj0Q7toF4NY9AMWYU6OSWsFftxH+styMte2Wnsujn+/
dtFZ/YaIvHL28EM/VecL6Eb59Bj9e4ysYqYv0rKZwPtFCqyREqTwAbYCSDF/Rupi
+sWZscJCoZoUCXa7H9sJw1UHA8lxuVZlJnYRk0l29Ev3U5f0H+g=
=E3Fn
-----END PGP SIGNATURE-----

--oan4dehvlf6khej7--
