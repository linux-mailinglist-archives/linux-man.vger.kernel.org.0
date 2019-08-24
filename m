Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DB8139BA17
	for <lists+linux-man@lfdr.de>; Sat, 24 Aug 2019 03:33:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725886AbfHXBdl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Aug 2019 21:33:41 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:32923 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725857AbfHXBdk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Aug 2019 21:33:40 -0400
Received: by mail-pf1-f195.google.com with SMTP id g2so7687087pfq.0
        for <linux-man@vger.kernel.org>; Fri, 23 Aug 2019 18:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8+nrLkzJmHJNEhNNE7A6THw7y72o3a5tt9G/fwbZUTU=;
        b=YdxETOoDBjtKByXMNLRXfypqBAnA2ZSQz+7prBKkJGmKYtCH4SKHhRjWWvYx22YyeY
         Uvyf1avHBnc/1h3YN5uVWufhHHYEPYNEtaz669FNaXvxBBXf0x+pAALpE8WS7yWMx5Ev
         GXNfaLwViJ0TFcWyu98/3/16KWcEOj6TgSlWyqb+1fFqa8HfNZNgm6DuJKwFL5VXITLN
         kwiOy7waFrqn4pRredcmaKDbcIF7dgU9F5WFSqyOPtFi+nAiKueotJXtZ0oA2jotroBF
         JAZI2KaGhrqWge5O3qSqTP/A9EzbSH70qGdWkD0kM7ltSBRbl4QGweSf9Pea48dz141E
         Zwcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8+nrLkzJmHJNEhNNE7A6THw7y72o3a5tt9G/fwbZUTU=;
        b=HdGe+JreN7YR9ZuDcTZBAqE86eoy3Rdkuyga7uaP5u+/FJ2C8pB1yoprgAbyPfiNu2
         D4YMEmaZ6udWYHO6/VBpfXSIZUiNcKpbHtuOdQGrAINqT5UdVjZKGPGdQY539qJRqyyZ
         Zd/sx3aSs6VRWJhwfbB4VK7LChZXaMf7UBEgDLyMgSHjXqFT+3N+8kPCWer37+A1frvB
         zsotSqNc3zHpsnMjzBAWsZkk/WtACDrwrKeSkZEFhPT7XA+XCv/jDWyvQ/XA6YkC8O4U
         e8+uC+IZ5G0fABhljvAn9hidipoqYuFgoywQK1gE7895KakBFX8euc3uBCe+ysUOSX4I
         Va1w==
X-Gm-Message-State: APjAAAX+DQYUpwcx2VwWsEqKWpCiky1GhzukQyxndZTZMkRKprrHrc0H
        LGTcNzmUxMTPD377l9m9ZIw=
X-Google-Smtp-Source: APXvYqw/QL0wOhevDO5pZmAdzEQtOU+0V4PUEJ9CSSaFVWgA8EPKu0eCDEHAdB9WzT95chTi3ZH/YQ==
X-Received: by 2002:a65:6406:: with SMTP id a6mr5150017pgv.393.1566610420075;
        Fri, 23 Aug 2019 18:33:40 -0700 (PDT)
Received: from localhost.localdomain ([1.144.177.123])
        by smtp.gmail.com with ESMTPSA id j15sm4126199pfe.3.2019.08.23.18.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 18:33:39 -0700 (PDT)
Date:   Sat, 24 Aug 2019 11:33:32 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Don Brace <don.brace@microsemi.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Kevin.Barnett@microchip.com, scott.teel@microchip.com,
        Justin.Lindley@microchip.com, scott.benesh@microchip.com,
        bader.alisaleh@microchip.com, gerry.morong@microchip.com,
        mahesh.rajashekhara@microchip.com
Subject: Re: [PATCH V2 3/6] smartpqi: add module param expose ld first
Message-ID: <20190824013329.lozyyuiv3qe57jyu@localhost.localdomain>
References: <156658004701.6969.3969396310784177369.stgit@brunhilda>
 <156658017256.6969.6788339572032916967.stgit@brunhilda>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="i5nbphywkpfe4wg6"
Content-Disposition: inline
In-Reply-To: <156658017256.6969.6788339572032916967.stgit@brunhilda>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--i5nbphywkpfe4wg6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2019-08-23T12:09:32-0500, Don Brace wrote:
> @@ -82,6 +83,7 @@ Specifies the action the driver takes when a controller
>  lockup is detected.
>  The default action is
>  .BR none .
> +.TP
>  .TS
>  l l
>  ---

Can you explain the purpose of the above change?

Your subsequent patch to correct the table, by reformatting it using
tabs instead of tbl(1) macros, might have been provoked by the above.

The .TP macro is for tagged paragraphs.  .TP consumes the next input
line as a tag for a tagged paragraph.  In man pages, .TP is often used
for definition lists.

However, because the page was being preprocessed by tbl, the .TS macro
was getting substituted with something else, and that something was
getting "eaten" by the .TP macro.

Try removing the above hunk of the patch and see if the table comes back
to life, fixed.

Regards,
Branden

--i5nbphywkpfe4wg6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl1gk98ACgkQ0Z6cfXEm
bc6bgQ//YtDBLUNsp/bQknAI9iX0m1WJ+WflKnqBVsdeQ0AlFfPFoWNZp14QIVsv
/hioJwPtMpwfb2E6b8xJny4itCAqiYXxpujNTf3IjlsMIbae0vAfrtXJWz+9NNnN
wR4/hPTFxsNDpx2NXeXstbZU0slCqkmt9DHDqbdjE1CeIrAxgzEaQYQlez2Vcvp7
uFqyP4oezcWtn3fcATMDFDZDGUV7E2/I5077p6M2rSCdfyTNnn9FRAWoEJDr6j3u
sD/Y4Rbos6tOi+56GuQjrQ27Yt27+qrDRHerm9M/HGnl/Ymusyr/zovpY8dsgQdU
Mw7P6OaD7H/EgtMwHpybvTlgjIbjMbgklaaLIdA5swXvQRhkOgoQ2MUvVL+2MQG3
HfEdc2ezVyEbtHBIRmvZ9jsZ/Qc5VWXvyFI0QT7/0sReAd1iAE5GfaLHt2wSPQBZ
xBHVogWai/+wz8zSYNxt2YWgce50VSaX68RgRgrl7s/nSZsLPbTfC5aKvjvtMHfm
WVaSYhEg8Z+ipsNV82j8MRp3MJfri0CY1Rox9tqHvXHP+8m5WtkTSFxDmME0vrVs
JjpHTFYiBQ9WXBWxT6uqgM70gGaffS4g5BUSRmOzb1Lixap9U51D14NKoMR4IkxB
CIzcTrnpB3KrsVBxIe5MOUYIoOtDoJH61Cwp3ogGzHttiwiibJg=
=jkhf
-----END PGP SIGNATURE-----

--i5nbphywkpfe4wg6--
