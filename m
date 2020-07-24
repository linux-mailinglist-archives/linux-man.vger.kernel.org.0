Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90CAB22C4E9
	for <lists+linux-man@lfdr.de>; Fri, 24 Jul 2020 14:16:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726591AbgGXMQE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Jul 2020 08:16:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726539AbgGXMQE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Jul 2020 08:16:04 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02E5CC0619D3
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 05:16:04 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id cv18so5781129pjb.1
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 05:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JCki89vmAkDqKrv9qzdOapNq1VLMzc7x57rICn+CJTo=;
        b=aJzH2Hlc6grh8ZtEQX+hDCJ5xvYazNBdrKmD2qLDjxG59IRnj3yCMQEi8e1rtYvxUS
         fL6eAnLxD8/8WtpUsV1P9a5q48ujq4WIoIjI4UGQsKN/ZkFrpuV83/18042PPhCyQWvU
         h0RA7SZrWNokqLdSLL/rh6uNMN9vQyclGmdcYgKlJBNmMIGe2qyuwjrs6hC0opBc7SiK
         t6ALVY9q8t4IVoODlbPCOZy2dxj+I6iwTabdgib0pEqsbGzEJJJhzKwBNQbkV4jaahta
         n6yqwuE6U6MQlqry3Y1m3+/1Ghkhxj9h2I2ixTXSxiBsY1suQlBfFxETwIiZtycAuSQU
         vhpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JCki89vmAkDqKrv9qzdOapNq1VLMzc7x57rICn+CJTo=;
        b=SVjhW840aH7VDBMSEIIz5TJRbq88WSoKiKjmS+uA38bWViM81wC/ZW7om4XEx7V/hs
         sPmTpfXNOrolhiBKJBX1Rg1iRpFmF2uQnjvdb1/TkUod+OGZ1M2gMUYCIG+NmeNe+7Ov
         ePrBoXqx4ZhLVMt0dUzWjsyNKka5ZVqc1Pp7+o1XkwEGGJM2cZryHGvkFkioH/aKHf5u
         IbkX3rO1JmxhZK2PwOS86u5jBsiWBYWoFDInpl529x1nUnI+NjUlPib/4uMiUtPfd5Z9
         U1WLQ2WFuyoyXqm6AFLPOtSHqnfgdLTpRre4HKOz8mAjHYjo3dtNegv6XxG3KAYnr/QE
         jbaA==
X-Gm-Message-State: AOAM533l7T+NxrMTk/xaIz1h/mKxk5NuEkanrjoXfEOvhNkS6H+ql+G7
        HIEO6eXhNTsppmssjRgXfjSjIJg6
X-Google-Smtp-Source: ABdhPJzNuJTOMUHClQiJk4WBZEi03cSO3whkhmFjoYHsCFzlB7MLWHKHB3LyeRiLEGPIQxTgkrK69Q==
X-Received: by 2002:a17:902:c3cb:: with SMTP id j11mr8181963plj.324.1595592963567;
        Fri, 24 Jul 2020 05:16:03 -0700 (PDT)
Received: from localhost.localdomain ([1.129.254.95])
        by smtp.gmail.com with ESMTPSA id bf11sm5773921pjb.48.2020.07.24.05.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2020 05:16:02 -0700 (PDT)
Date:   Fri, 24 Jul 2020 22:15:58 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] drop spurious t comment header
Message-ID: <20200724121555.e4l2okob3x3fzk5z@localhost.localdomain>
References: <20200723215333.13779-1-vapier@gentoo.org>
 <20200724000315.yx5otylik6oqqy6d@localhost.localdomain>
 <CAKgNAkjwwxrM_ry-b1rtrVc8YjfNE=p4iAht85P+mBs6Eq0U-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="5tra5dodqfrczl7z"
Content-Disposition: inline
In-Reply-To: <CAKgNAkjwwxrM_ry-b1rtrVc8YjfNE=p4iAht85P+mBs6Eq0U-w@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--5tra5dodqfrczl7z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-07-24T12:13:33+0200, Michael Kerrisk (man-pages) wrote:
> On Fri, 24 Jul 2020 at 02:03, G. Branden Robinson
> <g.branden.robinson@gmail.com> wrote:
> > it is a hint to the man
> > program to preprocess the man page text through tbl.
>=20
> Yes, that's my understanding. But I believe that these days it's no
> longer needed(?). tbl(1) just gets used as needed, regardless of the
> presence of the 't' comment, right?

[A few "strace -f -e execve"s later...]

Hmm, for the man-db man(1) in Debian bullseye (testing), at least, this
is true!  And checking its own man page, it looks like it was true as
far back as April 2001 (the horizon of its Git history).

I guess there are so many man pages that embed tables without including
the hint that the man-db maintainers decided not to leave the comment to
chance.  The only other man-like program I know if in anything like wide
use on Linux systems is mandoc, which does all its own parsing and
doesn't depend on a *roff at all.

Retaining an accurate comment would be a kindness to other man
implementations I'm not aware of and to weirdos like me who run groff
directly because we develop it (though admittedly, even for us, there is
the crutch of grog(1)).  But I'll grant--these populations may be small.

> See my comments above. For 15 years or at least, I've not paid any
> attention to adding the 't' comments when I added tables to pages, and
> I do recall anyone reporting ill effects. So, I'm inclined to apply
> Mike's patch, but will hold off a moment, in case there's other
> feedback.

Sounds fair.

Regards,
Branden

--5tra5dodqfrczl7z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl8a0OsACgkQ0Z6cfXEm
bc62chAAjnnYOY3YA0lD3rQMD7pX5Fzy0424glHdL206Aq5vQ7IkNCCzRyIvVIH1
mXmASbSCyNPPLOfXi6e4IXZ4Yf/zvhv/Awr3Gv3Tb+8coq4+Ab6tk+ahYMquSc6J
fuJWrSYYIJI2g9G7heLvQOW547ZB3B1rijn5OiyRpld2nYayu1397hmC73AFgbqE
1iNxIqv8Dqk7KIIVflzNOJwY4WFfsH57FqHQl9mDeuXSUKNoM/SwbWWHI/UCJS/c
f7JJKPwG1R8gVWxdqsfWvAl5wWDl6GIyaue29pVLmJpHQa0MgDg4jorxRd4cCH24
zDHcwxsVho0VJsJVxPXxXpRJgqgkYirDNGrwqDm0uIg5Z0ewVIHW5mmoTo6hSJgX
1HZcVVRq58xu//0MHnFiL1/ivfsv4Z7Q87Dmnm6p+l5yun70caHqCABeT6coK+0R
fZhohaO+ikKbUvxXTjtwve/+T39b/7wYKqneJC8prVGjKRml7wNfPYGo6+FTad/A
ooBYk9bdWox8eZXQme6dI61k3Kpr430FindxxKl6Vh4MpY4PNaYS0xlWAlX7iTdf
Opk7TDLPyYWC+ctdUhoqXbmtFp/909SBtiVRzP/mUWMbi7GIktRwSePncBry7Dnt
K6QTMYeaUGY3l86KIdZ78H6rY303osphDDtY5g/WTYTx/Ttm+XY=
=e67g
-----END PGP SIGNATURE-----

--5tra5dodqfrczl7z--
