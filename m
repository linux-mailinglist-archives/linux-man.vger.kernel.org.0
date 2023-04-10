Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E3176DC23D
	for <lists+linux-man@lfdr.de>; Mon, 10 Apr 2023 03:04:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbjDJBE3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 21:04:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbjDJBE2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 21:04:28 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAC1430EB
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 18:04:26 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id i8-20020a05600c354800b003ee93d2c914so3330009wmq.2
        for <linux-man@vger.kernel.org>; Sun, 09 Apr 2023 18:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681088664; x=1683680664;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pK/ejc+tDAH4AlIyJN29tOX5FfR+t5DwsDlmaJ5LmIk=;
        b=lejcw6tJxy2EHYnOi9wXcdGKjtthGkiMWZ8pladouMYZs1WHNsd+tEcHFqPw6aP9Yl
         6zrMoVikpnsQT5ankiA0lqDCYlzD8lil9/QL/6Z59wrhUE8j2nSJMIkCKocEibxXzXXQ
         EjrzLukxSxtIsm/i4h54FEZ72GdxorZZfo7ovovRFXwMSPvywaAGI19DbFG9qT1UrLgV
         pHPRLPQhI63AGSgS3e03Iyv4ixOkE1G+QxNLqUisBpLhAr6ULGQE11WpYIhgIkhVbE57
         tUGtt9O8siHzU+Ix/R+g+Mihw76TdLxtFh7Bh9USHQmvd5iV+r1qFpieW6OBdhvgNaED
         asBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681088664; x=1683680664;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pK/ejc+tDAH4AlIyJN29tOX5FfR+t5DwsDlmaJ5LmIk=;
        b=D4ieIibWVR9fx6qwRL9sA+BLV3n0W7fx3bb8J6+ayFOqfPMH+kDxEcf1wX3Vnj8BW9
         YhbuPyQXfDarYYFHXo6Okz8B/geEQIlxQtEV/n5qXDa8eFf1J39KhICjgSjbzmNbeyjd
         0Zu4e3FAYjpboJgOpgGoAwKfdy+qQgNnEgrzIEXkqnK+h1EgtdBQ8ckJC2mUDlR6M7JQ
         fwX3arYzuvRPBrjcqX87cZNIamTyQ2Ie7vQOBOXxvIasDYEKTwyQUI4srr3TQe6Uex7Z
         ulUgvS3jjzQ8JMhki8wf7M9HrETMVrMLjFmAjHAG1jeudz+h8yVnnoywFf4Dz44y+H6i
         Fmag==
X-Gm-Message-State: AAQBX9e6XXlwEWD9MJmVFdp3QBjKTs1rXYPXSufEisfzhrX9pA2sPP9C
        LIWODi1rNQJJb7/Kz0BVOBxzQDyILGo=
X-Google-Smtp-Source: AKy350YQzUuzWCTsxrQbikZkAGBz9bsmnfQU3Ok+LxjYgUWFQ+aomEQ0yLy5nsyIjFO+wOTV/lnmzg==
X-Received: by 2002:a7b:c051:0:b0:3ee:da1:1346 with SMTP id u17-20020a7bc051000000b003ee0da11346mr5941602wmc.36.1681088663751;
        Sun, 09 Apr 2023 18:04:23 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m19-20020a7bca53000000b003ede06f3178sm11935901wml.31.2023.04.09.18.04.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Apr 2023 18:04:23 -0700 (PDT)
Message-ID: <e6735982-9d5b-f63d-3bfb-164e3f6ce176@gmail.com>
Date:   Mon, 10 Apr 2023 03:04:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [mkerrisk/man-pages] Add note to state this is a very outdated
 mirror (PR #31)
Content-Language: en-US
To:     reply+AFA4ZONK73S45476YGDP3OOCIA2HHEVBNHHGBDYVM4@reply.github.com
References: <mkerrisk/man-pages/pull/31@github.com>
 <mkerrisk/man-pages/pull/31/c1501174582@github.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <mkerrisk/man-pages/pull/31/c1501174582@github.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wNokXQs7WkQcn7inohIWVGQF"
X-Spam-Status: No, score=-3.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------wNokXQs7WkQcn7inohIWVGQF
Content-Type: multipart/mixed; boundary="------------TRxZhMBI3nB1388CAUIGFGvu";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: reply+AFA4ZONK73S45476YGDP3OOCIA2HHEVBNHHGBDYVM4@reply.github.com
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <e6735982-9d5b-f63d-3bfb-164e3f6ce176@gmail.com>
Subject: Re: [mkerrisk/man-pages] Add note to state this is a very outdated
 mirror (PR #31)
References: <mkerrisk/man-pages/pull/31@github.com>
 <mkerrisk/man-pages/pull/31/c1501174582@github.com>
In-Reply-To: <mkerrisk/man-pages/pull/31/c1501174582@github.com>

--------------TRxZhMBI3nB1388CAUIGFGvu
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 4/9/23 19:20, Sebastian Carlos wrote:
> I agree. I would also like to note that the [website](https://man7.org/=
linux/man-pages/index.html) itself is outdated. It took a while for me to=
 realize that it was outdated, so I would also appreciate a note on the [=
homepage](https://man7.org/linux/man-pages/index.html) too.

The official website of the Linux man-pages project is:
<https://www.kernel.org/doc/man-pages/>

I've updated most of it, basically by removing contents, and pointing
to the README and CONTRIBUTING files in the repository, which are the
main sources of information for the project at the moment.  I plan to
remove even more of the website, after adding a new MAINTAINING file
to the repo in the near future.

It may be that we add online HTML pages in the (not near) future, but
don't count on that for now; that would be a lot of work (at least to
provide the high-quality pages I'd like to provide).

Cheers,
Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------TRxZhMBI3nB1388CAUIGFGvu--

--------------wNokXQs7WkQcn7inohIWVGQF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQzYI4ACgkQnowa+77/
2zKJ/RAAmEgwIu2uzu0sndwvg5oxuiiBC9EfmPbKvPfwDxnrMSbwwVZLzleda7Wy
iqvhSQ17I78INCM445N1ezyYjflFf75odKRL+80Oews+BaBQXRsXr6OQNe0JPlIf
/TI9ynfwuXzmyt4O54HfSIxhntniwDN+rKmDJVY4L/X6GMY4RMNOWd+xVolWWz33
dIin3cRa/ZqSrG/zTt+zWlMubcWOOYcZGStfbb8p/ClDdXDjOs6b1AI8wROtQQqr
YFDb7S8h77QyL6w0JmNa3auDzN03t0+A0GIH99/7VbUbzPnthMYBCI2MTmmUfOfv
/j13YRZ1Goql7QdQNR0UgDd2J/k7fxQRsaPREhBsq5GZrlgatiqcRfHP8+WYzyi8
Bd3ZkAeI9oNpvD2HDOmSQM5/JryNuNkITckeE3+AHAMWW7xyWHX5TM7vEzPgzrmL
RjE/Y7EWzMwGAZVYcdkpylIhXEsMdBZoz4Hx/aiNtkHwMrMmyi96yk8epZFx+evQ
RQNCA0R+7cz17DjoX6bsKzCU6E9Uk5ENFYlwsfaR3tvchBkmG/+hIseXK5+aXmYl
pd8K505CcWFN/Z1lnL/om8IgqaLbaTH2T9qfVtjoC/xC7xtRRnytPyXJZ2gkApuL
8WKXAq+b6JycwUvr6YqyRirVw9Z0GiNTZ8qYdSN4DPCjZz55H8c=
=0rbz
-----END PGP SIGNATURE-----

--------------wNokXQs7WkQcn7inohIWVGQF--
