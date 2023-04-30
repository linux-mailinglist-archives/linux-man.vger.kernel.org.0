Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C7126F28DC
	for <lists+linux-man@lfdr.de>; Sun, 30 Apr 2023 14:21:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230345AbjD3MVW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Apr 2023 08:21:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbjD3MVV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Apr 2023 08:21:21 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBBEEE72
        for <linux-man@vger.kernel.org>; Sun, 30 Apr 2023 05:21:20 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6a5d9853d97so611607a34.2
        for <linux-man@vger.kernel.org>; Sun, 30 Apr 2023 05:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682857280; x=1685449280;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dJJkEzm/jJQe28k0yl79EbJUjEmRH+BPk+2KvS2Zi/8=;
        b=XFXwVrArZyXxfztZ4FbEFa2SGJxuKhjFoCJr6qjUHA0+qbshnWmJDIdtPhEYepqjTf
         U9WiFBpjBfae5avxzPwfgRMOk6KJywUvcqV0JPkVGgDkI0tYObF22m1g2emFu9wPbFnX
         eazmTozLpE4mX+xNWwltK55DyjgFapDzHY46JJFoGNL19jDAwABXqD7AZtWTL+fvxDWz
         J4iIgMMdCs4zyRZW+fITX4ohKTJ41pnhFKWbQ1ADjHvIFZMZF1790D1yGpSOXzcKj55L
         eEppjxELnS74OAPhO4fR/Rk0g2A5QrtR+alrOiaE98AwJzYr6+7AJ3sxI+2R34lJUXq2
         BGyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682857280; x=1685449280;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dJJkEzm/jJQe28k0yl79EbJUjEmRH+BPk+2KvS2Zi/8=;
        b=VxXSqZ2QR6ry6V0i7Hl9I3IKw/tyaDM3kmFeK4M4xM1xCfN7Mr/LW/7CfExjDo177C
         ax1Ff8KP8gyx3s07zRbQ5a0g7RqQDQkO3tp2JFucMFCezW8YWYFAkj017bl5QB8qBV0K
         DLsoj8DYc9I3mnBuk9yNpMy2FhwkjlA36f4Ovt3OwMZqAi+LiLXDoxYCQ+4Q7i45Wiyy
         OPcz3f2JLJKmYYstpEEzhFR/2HGLqMdkxGmnZslzNl6qXAT7cfNnRsEIBrJ9T0vylktv
         bYbAmpHD0JKLT80CkOUCs9iOOw9fuwszYsQwzVNTxBO8T1YclPITzyUJWW3L6gwHWSh5
         owUg==
X-Gm-Message-State: AC+VfDz7HY88rPw78cff9B1ejiH33RXvm0ptjcBXR0w/rHWGlP2ffTHK
        0uSmbZTTjimW7836wPFBcZs=
X-Google-Smtp-Source: ACHHUZ6Oi69xI7agN7cu93+QSmD4ioWvdGyzcHXR6d/cBN6HFP51GyGnsicFyaJiC7fU7i8sEg9pUw==
X-Received: by 2002:a05:6870:e290:b0:187:76e6:7527 with SMTP id v16-20020a056870e29000b0018776e67527mr5215107oad.17.1682857280212;
        Sun, 30 Apr 2023 05:21:20 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id r3-20020a056870734300b0017ad7a5f57dsm5459273oal.11.2023.04.30.05.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Apr 2023 05:21:19 -0700 (PDT)
Date:   Sun, 30 Apr 2023 07:21:18 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH v2] uri.7: ffix
Message-ID: <20230430122118.t6u57gcbc52xbms6@illithid>
References: <20230430002639.181485-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="tqdybqz3agus3qfv"
Content-Disposition: inline
In-Reply-To: <20230430002639.181485-1-alx@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tqdybqz3agus3qfv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2023-04-30T02:26:39+0200, Alejandro Colomar wrote:
> +.SY "\fIURI\fP \fR=\fP"
> +.RI "[ " absoluteURI " | " relativeURI " ]"
> +.RI "[ \[dq]\fB#\fP\[dq] " fragment " ]"

It's not _necessary_ to bust into font selection escape sequences in the
`RI` line here and similar ones later, not quoted, whereas it is for the
`SY` argument.  You can use the `\c` output line continuation escape
sequence to chain several font selection requests together without
intervening space.

.RB "[ \[dq]" # \[dq]\~c
.IR fragment \~]

But if you think the source is more readable the way you have it, keep
it.

Regards,
Branden

--tqdybqz3agus3qfv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmROXT4ACgkQ0Z6cfXEm
bc7gGxAAmozmdESTSuzo4NBiTZBnV75PRDFe4LwDuNeEGDTOvNlcf9GdHv8lDBFb
5GbdcoVgAJ3b0HtpqmwZ1tQM0gV05kU+WaiBhMz0+bpezxDK+chukTE4V+yvgziX
p3mIUbXrLSvzRorZUaAvcAX5PkPeFvrUgRokHmGsRRm2ZUBssLi5tzmQlIdSbW5z
szptPNsWrkhnoEcbciMx2r02/6Du8PwORKFtwbF9e9Xfjm0MnDEnFFDvLqjtMAJW
svtKcwJplVe8vWU7CNTOIxYibQdAsXFUGRXwTVpo0hyUoB+HbwkMYyRr411JExIW
oBIpNHMh9JzUWRNUo7kFDtbzXenwFGYI7pKLSRh2/Z031tM2iZensasB52f3MlIA
5bvqO3y/+4N9AVezT8IHliNAPLLlLewReDud80VJJhj4YJYe9cbqz78niNSK0BM4
7Cyo+ymyG16phVFyxYWkma8C8LShcCUALQulYh8clzmDouudgYNCj3UVjtz9AJz4
Ie7GhXIX/YfXpOgn3E/rUAWXNFm9VI1uuswBQovd9W7yy88CnUim2BomFdAzi5mk
LCy2UQr9AQrZsueMk7AbYufhS17N7HJhz0M556Pf/YxsRNztU9KIqaCLgogsXBHb
n3UrFMcXc8XWhFVlYvicjNdgrF1gSzT6065Es635DrRKqRskfv8=
=x3E/
-----END PGP SIGNATURE-----

--tqdybqz3agus3qfv--
