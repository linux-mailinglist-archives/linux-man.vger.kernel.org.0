Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4C4BB17D69F
	for <lists+linux-man@lfdr.de>; Sun,  8 Mar 2020 23:09:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726352AbgCHWJA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Mar 2020 18:09:00 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:36665 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726346AbgCHWJA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Mar 2020 18:09:00 -0400
Received: by mail-pg1-f193.google.com with SMTP id d9so3812951pgu.3
        for <linux-man@vger.kernel.org>; Sun, 08 Mar 2020 15:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vHz5UyZQdXWUEewk+d8c44xCFKsCF2Q4bGFwniuQ4WE=;
        b=CsMWFTqyYlj/SSN7ULScZYrLAERiTitUBLeue7MvIl5v0aNelhaPYe+3310NhaZ6en
         1vGL8TIznXISHIfISvLrFJOlADontdWZZXXLj4xiWjZouX/3/NpgYSaTYoUk3R2T1r0T
         CLx4qKJOA9m4DoklMSoqBeF7XzL83fWoSesIqIdhnEKb4yzhdam7qe2DSqZDJfDqjrks
         mulpvF3nZIWQ7y7tzQpSx3OjurnO2xcYVGyr4q/W0k964CCGNume9RcMU+maVAI9yEDF
         IB0rxAE4kBU1HHZWzxFfkCIx0KKqh3LmMXntXO7Ggif0g4o5ELD0YTG1OhQ7ztXD2C8f
         4dIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vHz5UyZQdXWUEewk+d8c44xCFKsCF2Q4bGFwniuQ4WE=;
        b=N+lA11CW6lFZnbzqfOsKs27ztA/LAw1kppQQn8Hw+KzN30eljR3GJ9GxP0qoPALmG3
         lHmPPD/ukQhYC3wOsjNJOFUfMIpskREOylEVImUOsY9lfc84Nz8PwRSOSOL6uQkRbv7e
         Z3T34IJNXqbVZoVlV90lcU1fa+2OO1FKLFxA6gD4EqBTJEKI8UuNI2kiIyHRH6jRi6T7
         z2ApBBmi0BnDMFU+dNtbKvCNLUTCngmNuA7uJihvT80/ZLq9UTCsyxKPqCfz/QBoyuHS
         ydThVXoruGPHlkKVfdKtq9p0seA2t7hbtKoGH94xSaiFhQwCmSBK9tM1U3fmxmYHmkJ7
         PvVg==
X-Gm-Message-State: ANhLgQ1nskgXCJOM4cTvqcxOG8YPcLzhASsA6c5NT9CP7A3UYQ56xJqV
        19JKYBS0YWrMPvMJlrEVvXbpoQ9n
X-Google-Smtp-Source: ADFU+vu6bTSC/DytBDYiX/AmXz+YuLRYf56MbaNx9SGEyShfayRF0btz45527Vg0d7s9PG2Qdm7OGQ==
X-Received: by 2002:a63:f74a:: with SMTP id f10mr13352495pgk.360.1583705338945;
        Sun, 08 Mar 2020 15:08:58 -0700 (PDT)
Received: from localhost.localdomain ([1.144.139.129])
        by smtp.gmail.com with ESMTPSA id d5sm36891073pga.36.2020.03.08.15.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 15:08:58 -0700 (PDT)
Date:   Mon, 9 Mar 2020 09:08:43 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Colin Brough <colinbrough73@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Typo in 'stat(2)' manpage
Message-ID: <20200308220839.z7nd76ug5b7erdsg@localhost.localdomain>
References: <3ce3c571-9700-9b02-621b-5b07accf99f7@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="kyrrjkd4jag7gpqo"
Content-Disposition: inline
In-Reply-To: <3ce3c571-9700-9b02-621b-5b07accf99f7@gmail.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kyrrjkd4jag7gpqo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-03-08T21:59:13+0000, Colin Brough wrote:
> Reporting an error on 'stat(2)' manpage, present on
> http://man7.org/linux/man-pages/man2/stat.2.html, as well as on my
> Ubuntu derived distro.
>=20
> Name of the first of the list of ERRORS is spelled wrong:
>=20
>  - on manpage listed as 'EACCES' (single S at the end)
>=20
>  - should be 'EACCESS' (double S on the end)

This is not an error,  EACCES is not only the correct spelling, but it
is standardized.

https://pubs.opengroup.org/onlinepubs/9699919799/functions/stat.html

Like creat(), it a legacy of the pathological obsesstion with
abbreviation that afflicted early Unix developers.

(This one at least has the excuse that externally-visible symbols were
limited to six characters for compatibility with Fortran linkers.
creat() has no such defense.)

Regards,
Branden

--kyrrjkd4jag7gpqo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl5lbN0ACgkQ0Z6cfXEm
bc5plQ/+IOYa8Ukxsyn9odyQrAVVg40CvDMsqDFFsRpzraONmUnMEuffbPoKfEnI
DHdDYeD1GqzldVJFTNQa7SYVd21ViiPIZIZsRFY7dyeBn60niXoBoszTTmPvPXPj
3yqd/gCH7MEMBir4EFpHJSsbLWIHBshOgNZBlNJJdiglSLW7GMH32H7yPzMTrc4J
POgUxERTMTuyPx6Y2rf8et4cGOnVp7FtiX0FbyydIUPFUutFAqOyOtCDOis8qOKo
t1mMwAA2Nv00LEBLhiNaun6Zo7E20ecddtnTS+T9jX2UIsBikJh626HK9V1dOKbC
QN1mVyPKqDkHPLoqwzlp7+AFBzT4IrsWSGuDDmDQ2fin4nvNmLFfQlMRufxzyVda
cOIYgmjmatsnyGnDUsWrdqSbqjo0MUTk0TLtwA9Pb4wNMVML/sbXIlf2zLJyxFsm
FdoqqFkuxMtKeXKI4I7th+2iDazAb1O5EGU8xwH86fXAm5+GddoggCPW2hpluo7w
AvBrYInDFjg4VZRQ73tXBndzCqZscZz0gAztaWOVvfqfqVSF82IJWZsCscg7sEWv
zCE5VgCDcpfN4CklJfvUvIyCOl6w9dMyd0rbFyEXfYUlbEx3hjt9RdPzp1iW730D
axMpzcKMfeiMmLI9IM4HiDIHabLYKWltDBklsEbjOJukSHo6J3Y=
=DBJe
-----END PGP SIGNATURE-----

--kyrrjkd4jag7gpqo--
