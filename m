Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 308FCE5813
	for <lists+linux-man@lfdr.de>; Sat, 26 Oct 2019 04:28:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726069AbfJZC2N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Oct 2019 22:28:13 -0400
Received: from mail-pf1-f178.google.com ([209.85.210.178]:32791 "EHLO
        mail-pf1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725955AbfJZC2N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Oct 2019 22:28:13 -0400
Received: by mail-pf1-f178.google.com with SMTP id c184so2927770pfb.0
        for <linux-man@vger.kernel.org>; Fri, 25 Oct 2019 19:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7Grl2S/CEAinky1HXtUiL67iPCFSPJILb0aonUtYb/4=;
        b=UmXXBTxhxV3+tJgXa3+pcJ3fLvkPN/D6BqAOz2beNNuQRgi7T2ZfHxroMgyQ7p+GGL
         zWi8qwaoY1TLLJSNP8Hlw0sQZW0yW3zS+UVtrirTBhyNdmHhlImGCBTUxUZoPoCem+Ss
         0QWUWeJXV7kGnuUU7xz36suzIWrpfs0KUQG//eSnQ7eD7xsdXsGQ7s6HIar0A81lk79t
         0drPe4Nky+hait6Vo824pA0a+7I3HYmqxmNHLE7i5xcR1gkgspwzs/5v5JIFUNMrRc4O
         tynK2oQVgYNf0SBiPwvgRG6QXYOp1LbZp968z8kbE6pjj2lwjFSoLN1tJ8eVvA4Ypitj
         iVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7Grl2S/CEAinky1HXtUiL67iPCFSPJILb0aonUtYb/4=;
        b=JMwmgXFx1jnIW+s0zGhYDDZL77oqf1wlp2Cu/SMVJzpGQt/1bS9UpEjaRhNTjsZUrq
         xvm5AHYgGMzquNhwRqdRufVJUz2UA9n9UIQfwNqfCc3CkEyzc4N+htKixq+WBdBX17ot
         Ed3+zBVdcfCGXgNU0cWLNzPSSJ/Eu49V5tFuuTTq9wkKcw3F2wLKHQkv4ngPOGQZeyHH
         Sq1JesDZ6Q3nk+iGE+zAjJavj0brZnlydlK4JZ/dYYQE4+vPe5RnNmHX3vVdecnCP71H
         WYse0iYbgbnoEs4Pow/rzeZAS3jslqxklTh9JunNdQAw8SUpJdmxID5Y0jT0QOCpDqlM
         +BOw==
X-Gm-Message-State: APjAAAWztaRF02xSg8b7l3uniRVrjOtEQHVnD9o2kl04Nww72UExyxqz
        dvFgPz+Xqe5btyxcKdY/2n4=
X-Google-Smtp-Source: APXvYqyp0jiJrpcWGdfqGmD0qVSXyrjJVdDJ3pUeAakmSwCXl3pJVpArUpPahyEXgsfZYCKyJtblRw==
X-Received: by 2002:a17:90a:fd8d:: with SMTP id cx13mr7924115pjb.66.1572056892555;
        Fri, 25 Oct 2019 19:28:12 -0700 (PDT)
Received: from localhost.localdomain ([1.144.212.230])
        by smtp.gmail.com with ESMTPSA id z29sm4209938pff.23.2019.10.25.19.28.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2019 19:28:11 -0700 (PDT)
Date:   Sat, 26 Oct 2019 13:28:07 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: For review: documentation of clone3() system call
Message-ID: <20191026022805.nwdjdnteapbudnyi@localhost.localdomain>
References: <CAKgNAkjo2WHq+zESU1iuCHJJ0x-fTNrakS9-d1+BjzUuV2uf2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6dxis2igztl3btsm"
Content-Disposition: inline
In-Reply-To: <CAKgNAkjo2WHq+zESU1iuCHJJ0x-fTNrakS9-d1+BjzUuV2uf2Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6dxis2igztl3btsm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2019-10-25T18:59:31+0200, Michael Kerrisk (man-pages) wrote:
[...]
>               clone()         clone(3)        Notes
[...]
>        Glibc does not provide a  wrapper  for  clone(3);  call  it  using
>        syscall(2).
[...]

"clone3()" is probably what was intended.

Regards,
Branden

--6dxis2igztl3btsm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl2zrxkACgkQ0Z6cfXEm
bc6yUhAAnxiNxBdsByzVLsMenDYZwrVUO5HyzrabWOhoTVr429VMJjBDrO4IopaF
tk4l4WOHt6kNXkuxy+iPvRQ3M9L2nkFVWrUvtPx39CeSJL8CJ/ve64q5Ltks77Vb
f1Gb4qnVsEV9Oh45Zq15qme3Nyc3p7vNLkLXdGuKjuczztr8o92OEklK7GlwNyEy
NFtCfT3EbllGeuBsYN4PuceeBKHb8mYBfU3a5gmILjoANRTX2xsfyCQO6m1Jx6eY
0mGlJS7SBnbC+w4QHla4ttTEczFwNYCBD2/XUGM36l54M/61bOm2w85gYbQnx+eZ
TyyE8tMKiXJc8TNCSFFyGgzGozmFSbYbsNS3RJsLPeHoLvSntGD7VGzep3qPOHym
WObnnxLVefsdRJz7zl2izHyvOGtLCPGg2B/v2+HZsZoAA0bBAqDo85Bo/lI/YE/D
3PdL1yzFcE5dm9KYxq0dXwSqdhxi9vm9gPXrLURbvZfkyoTuz+bep4ywg9/rLTkZ
tX5u5JG2b8tu28HLHytf+MPY0XEwGsvZQd1OoiNQ71Kb1mQla3YDmNZuu/aAQfwm
q574yUveUTXlR85OARq1Zy2pEgNgvNvr/5+od9ZUufNwpnWFxfaWM6j2zpRZZy+P
Aa9KDfXoGKBQWcQ1MFq9+QoamQdOcnXrs601brGsaESVci0QLTg=
=0PtG
-----END PGP SIGNATURE-----

--6dxis2igztl3btsm--
