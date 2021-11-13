Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2D3344F31E
	for <lists+linux-man@lfdr.de>; Sat, 13 Nov 2021 13:42:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234327AbhKMMpG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Nov 2021 07:45:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235908AbhKMMow (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Nov 2021 07:44:52 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FC2EC061766
        for <linux-man@vger.kernel.org>; Sat, 13 Nov 2021 04:42:00 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id x7so8903123pjn.0
        for <linux-man@vger.kernel.org>; Sat, 13 Nov 2021 04:42:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RvCISlqouKJrrVYxkxL+Lapv9Ba82r0SSh3bDLXZGwY=;
        b=KmaS46ev6VJYJVH2tD1NSkipWcuyvcdoj3EEsO+7LbPjZwJNArvLIwCWuuxpkQTlbh
         YJXWUdbeJdq+NVA8CDQfT9csNFbO8XpDUhxX3PSCLmgB7lve4xIdbkl1pu8n4SwSVpH1
         N22iPnhqf7NeRfj9Cp66ma4bBdfkF+hPAk/Ij4oyH6F6xRXuADDI63RLKkkGkELLahZ1
         /BDOT36GAJtKwwX62Mi4t3R2rjR0kfahXQoQ1qJI97NXVkJnacRcHAMlUoy6ntvkN4bG
         Vbjoh0uhWbMBMZRd/kLmDAE8tJqcQLD0Y+cdk8/17MW6c6pl4SpxET1ZPGVOxXHXw8aU
         ALGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RvCISlqouKJrrVYxkxL+Lapv9Ba82r0SSh3bDLXZGwY=;
        b=hpAJRjwdb/nmvjRlB9/MrQDf9ogHUZ0WL4/METKVlvJ/c/M95SlVI8X821To2l8hYl
         ojzM6sD3f+juCHHOtXj0dWSwMV6DBV+yTW67eIPOFMMufVfCYHMIKq4a2UjHdSBZt8ET
         C9qgHuSJQ1qPUzK1IFe4Ar6ao+xWEj1YDe52raQeHaWH6B2AzHRma3h3RhSWm/PedATF
         dKAtRvI4+2T+lpl9zdGc2TjF1pR+Pq8NoiTxK/Kr6IUMHGi4cDJjN2YgyJWq6zfngkGK
         eySHFAaw5ugRBK7r7SVzmjuENq2Wvv7hvXs1FwwlyrudxA9dHwpNChQ2cH0k4bHDlFDi
         tlbQ==
X-Gm-Message-State: AOAM533VTu56o3++LQbXZXb9aVTUCX8vYM1jIrVSJNrmdUwZrWQMBFd4
        o70N5ulv3OFiysOEjn9LFsc=
X-Google-Smtp-Source: ABdhPJwhrtv/JTHphiQbHknnG4gyCbp2zyXD7QkogMycEKGSa5okmeiggNdC1oN4GBl8/2Ed8Nr7hQ==
X-Received: by 2002:a17:902:7c13:b0:142:3599:74c5 with SMTP id x19-20020a1709027c1300b00142359974c5mr4778566pll.67.1636807319951;
        Sat, 13 Nov 2021 04:41:59 -0800 (PST)
Received: from localhost.localdomain ([1.145.57.118])
        by smtp.gmail.com with ESMTPSA id x33sm9959348pfh.133.2021.11.13.04.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Nov 2021 04:41:59 -0800 (PST)
Date:   Sat, 13 Nov 2021 23:41:55 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Samanta Navarro <ferivoz@riseup.net>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Subject: Re: [patch] futex.2, mount_setattr.2, proc.5, netlink.7, tcp.7: tfix
Message-ID: <20211113124154.lazhqkb6qms7mpbo@localhost.localdomain>
References: <20211113115808.zzvid3gla4r33kc4@localhost>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="xyesluhi3nxuz3c6"
Content-Disposition: inline
In-Reply-To: <20211113115808.zzvid3gla4r33kc4@localhost>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--xyesluhi3nxuz3c6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Samanta,

At 2021-11-13T11:58:08+0000, Samanta Navarro wrote:
> Typos found with codespell.
[...]
> diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
> index 77233f5..ca56256 100644
> --- a/man2/mount_setattr.2
> +++ b/man2/mount_setattr.2
> @@ -986,7 +986,7 @@ main(int argc, char *argv[])
>  .\"     because. Because making assumptions about the current working directory
>  .\"     of the calling process is just too easy to get wrong; especially when
>  .\"     pivot_root() or chroot() are in play.
> -.\"     My absolut preference (joke intended) is to open a well-known starting
> +.\"     My absolute preference (joke intended) is to open a well-known starting
>  .\"     point with an absolute path to get a dirfd and then scope all future
>  .\"     operations beneath that dirfd. This already works with old-style
>  .\"     openat() and _very_ cautious programming but openat2() and its

I always thought the foregoing was a double entendre expressing the
author's taste for vodka...

Regards,
Branden

--xyesluhi3nxuz3c6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmGPspIACgkQ0Z6cfXEm
bc5L5BAAjmyF/ZTR9wXBp3ldC2bt6ZcI7XFA7gNo0LrS82W8taZn4/j/gx2muMuH
SP8qbxUvg+OKe159U5ZE6JrOmF2r+zKMMSQOYB78qM9u/5UaU9GVEIxlTL3v7SnW
huy2YzS3LXjRrFKaJdQeWFHHaowzpIBtjAYMyQmVJDh+cAFDbDiTGNzXAe2ltivQ
ImD3Xxv7y4O40oySwgPaYgr9MlWx2NCA5ykZrPDbmEav8ke90uzXvBZi/vWVfwjA
oLH3odtqsXvOTqSFhBpDJLb8JV9ycP569UAxibz/+EY9pxYHZIH0vsYq9dFPn2Bk
EsB3Aj3XC4hLgjMqS1NRmB65owU6vLqfvJFug282T2OSqED4QlKsj9pGd9C2hatZ
2xMzM4wiwh7u3ZAfjhrMw5lNKnjZfQJ6ZI5Mq3Mov+lpWfuuy1tZaCLPaDiY7in/
kg09Wb9kXeeJ3lAFblc1MTg5jjvUELsPOUmnet2YAztHZAwgF9mJ8PZd0EagqSxE
zs1SYd82I+2vYjOH6FkzgP0rVYQXRLBUimr8UG7wZgI9qwNNxs9woPiCHyr9sfgH
cjChus8yuXikIzJpAeBP8IirMTnftKYvOzk3QPQ/p6hUtCwjWRnmzLgm1bQs5uvu
exmyJdEDvpwf9Q7vdSMBfuj8M9XCVYcJ9nIgXVy3wLA5jsGb7og=
=0pYf
-----END PGP SIGNATURE-----

--xyesluhi3nxuz3c6--
