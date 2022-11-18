Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CBA862EB93
	for <lists+linux-man@lfdr.de>; Fri, 18 Nov 2022 03:02:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234961AbiKRCCz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Nov 2022 21:02:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232004AbiKRCCy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Nov 2022 21:02:54 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EDF8748C2
        for <linux-man@vger.kernel.org>; Thu, 17 Nov 2022 18:02:53 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-14286d5ebc3so1112101fac.3
        for <linux-man@vger.kernel.org>; Thu, 17 Nov 2022 18:02:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X3I6uetLnJdsAKFfPq9et5MomqlC19WVIrTunOXJeYE=;
        b=XvInp22tvWxniJFn8AT2HTWgI8rAX3KHvZeLyowIXAQvZOBEo+wCmQGmqPt9/AL/oj
         m6WJ9Uab5VHSvgFHLTNGcLEbjqK0hHTo6NotT+lJSaKvUEWUbdicivFFI4QTeywT6MgB
         DwRkWFwUCBXtCp0g3aQxFjnRFbW0zfYqHfw5ZLdOsFWLqjEbNYeaq8X9GSj6PX6YHBqI
         KzYhf9qwiT20jQPCcFGHu7ikYcxHWsSR+BY72p5/G8xd4oXX4E/g4SqoRdnyYGXsTpAS
         kRMf45uHhUyXA6featlr8Eq0IpqLMISWUF6v5TyDYKNxFvvUDeOEQA6haQnvonTimC9v
         yPFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X3I6uetLnJdsAKFfPq9et5MomqlC19WVIrTunOXJeYE=;
        b=k3fugLdCqepO8EobCoTit45F/JtQjJVBcQBdAMD2BAZpM4rgcc44e9mDGLf1D2iXUq
         Jp/bySSWtSo3wgpY04CR2ESRFAWLJN6aSv2BYAX8Ptts45HtwZBEc2+m629IurbqzY1Q
         N8Cose0P4cLb5xidcMqC4zJoOB3ItEb6OjBJlbFDQmXy+2gIY7ZB3G+iDEHmd7RoMWPg
         FAsjIP7RepDIOmjqu/tnA6xgvcY1yAwev0a8vKXeBB255pRhDXs4B7WleftWXdisUYH4
         eN+1mUQy1/Yj0LYGaBGpWG5Qn07pXrFJamtpCXKKiuAi/jRVOrbUgRS6CvkHCRUthagO
         r8ow==
X-Gm-Message-State: ANoB5pnuAqxOEWg2x5SgjpjY0BgcXsA7iVKP6gc1Jgso5+6ttTOxfJ5p
        U3pf+J+x0BXTWQCNnN3mTl4=
X-Google-Smtp-Source: AA0mqf6wBnx9x5SoMfCSvubk+fVpRU8kLBV52MlNmI9/t8KOr+PfOGNEDBjMYzHhfEZSj2DcanIS9Q==
X-Received: by 2002:a05:6870:a11d:b0:132:3c19:8cbc with SMTP id m29-20020a056870a11d00b001323c198cbcmr2864644oae.185.1668736972845;
        Thu, 17 Nov 2022 18:02:52 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id t15-20020a05683014cf00b00661abb66319sm1017445otq.37.2022.11.17.18.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 18:02:52 -0800 (PST)
Date:   Thu, 17 Nov 2022 20:02:50 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Subject: Re: intro(3type) draft
Message-ID: <20221118020250.cgmqfpmg4tzexxxn@illithid>
References: <c7f78a1b-a7bb-a077-3445-802e99f5e9c7@gmail.com>
 <20221117000646.pjz5cf43h65emq6q@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="p2vvzr5r5cmfqezz"
Content-Disposition: inline
In-Reply-To: <20221117000646.pjz5cf43h65emq6q@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--p2vvzr5r5cmfqezz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

Quick thinko fix to my own material.

At 2022-11-16T18:06:48-0600, G. Branden Robinson wrote:
> are termed an API or _application program interface_.  Types and

s/program/&ming/

Regards,
Branden

--p2vvzr5r5cmfqezz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmN258MACgkQ0Z6cfXEm
bc4cwhAAn9VBPfk9pvWVj42JGfJPnTXmyVfsZBVBKOJDXATZsbOaLg35KK76EvZv
qd98UqedvKkA/FHJLuCZwAiM4pebC6YicvrF7ae+GZ0i/8SUdI5lEMqueS99WPvl
0mWxFJ2n8QF67voSmhic4YHadZ5xaR0mXKtA+cVtnw6uDkuM1xueEdjjTtaFVrT0
wb5K91kKRBac3PcJm94ptHqH3UGlZeitmxLmkWT2AriyW5dvlq56ClGA5PUdyHrm
AJawEip3TgSxjxCcE1v5wzfHRl/xG+aHctGYMh7pzbXkklgRh8fxVvyq7oUr/6CO
fiblp2yC3+7kAMGZf/MTT194qkrnJa9dHVU3gH9gR0LvF+ewvZVNM+HdcchH4NWH
+q4uLiRGJvUsMK4rj1o+ElLUqXHDZ7djgGBQ8pB+oZ3yQkELWqx/Xr74VZMfiV17
lnOXH5HN8n823rr73X4LuJIiaKrDaryVtOWa565cAL4nZ49Le3BReDTtaXOY+4mL
4lXaGp50C0YW6WTDnBzNFNk+UFNpwNIRwqECKpyEw/jq5MYIQB/ASzW56eZFIVv9
hHjGycAvSBBsmXWgDZRqw4YA2WIFt/tXcIZd1392Dn4iJqNxGinLKCkhA8Cknq2C
CLr44R60hY+nujgQ8lUHBc1EuFwP+gM7U7rgyIIO9F0qb/ned9w=
=QHd6
-----END PGP SIGNATURE-----

--p2vvzr5r5cmfqezz--
