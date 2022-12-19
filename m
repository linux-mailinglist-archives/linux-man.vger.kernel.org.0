Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88D5D6510D1
	for <lists+linux-man@lfdr.de>; Mon, 19 Dec 2022 17:59:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229794AbiLSQ7F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 11:59:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231967AbiLSQ7E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 11:59:04 -0500
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8CD113D61
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 08:59:02 -0800 (PST)
Received: by mail-ot1-x335.google.com with SMTP id p17-20020a9d6951000000b00678306ceb94so1044099oto.5
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 08:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GMx5LoEspAfKhBwYl0oIqRbd9udovuJSpldOvBo3f8w=;
        b=nXq9OjPpQtg2KjQFr0g6sBpjvQytEonx57nQFck2EkqaS0gEwn5vGJ4ocZwjexJtUq
         G86fPfLUR/HLwWI9mfKu5Qx66WNGFZy7IxPOktvBsjXqToL4Z2RnmnWwWzJLspVzUwGE
         spyAi7dWJ+8iKEnclw0Z7ypOZfgBNAZi83zD25sRDh40PkdqjcfLaNn6t6dwYa/U2kEw
         uHW3SJmpwTgj+uhwq2wwo7ArQn0QQaNw5R4MZtC8uyfI/5iO4H2e08/gqi8hBIa06Nza
         oWn2LRzJYKrGuWNfxmM4LKVHGNF2lpRy6g1dHnTRJ8Pgi9I6UiCjbjyRlrbPYpCGEg8E
         QmMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GMx5LoEspAfKhBwYl0oIqRbd9udovuJSpldOvBo3f8w=;
        b=L0mQ1EEpVh6Hy10oSdCg09WQ5R8J37UVFbds+aywylK97aLv+lKa8W4GUsNwss3xp+
         3Cgr79lvcAg2GapHEI5DGReSpHBtO8WNiTyHv18afvbSQMFxRSgLaCH0gVmk31gp5EDw
         cwHp47njhTQucoLXYGe4tYP9QyzawS/UmfJg0uqn+W/IpFDV3NTfqLuuQUOboQAZ1GWq
         sXZVi84Cfkf6anp4fg8KwJCkVW5/bcszoyHFHFGh8TRTlfKHPZn83JVmQ+ZNcZ5W7SqT
         YfP/54yZqaUp7A2wX8vvqH89nAV6mUu48EQwYf6qJuMXpQXNyXfVfuyegBEwiJXjS11F
         Qp6g==
X-Gm-Message-State: AFqh2kodQ0dfVNR8MzJ+AwI67orTLmvtbJP4mmF+YzMVVAzoBCBrk3wl
        zblNN1ho1E1KWuMqSdJOwWtBmg+6BiQ=
X-Google-Smtp-Source: AMrXdXvn0iQjEOOUnxXUTjAHSkENUJ+KulNaDcVypD0w/YifCopAQQr+1SayTOY+yNYQaUQDkzJ3Rg==
X-Received: by 2002:a05:6830:410d:b0:676:bf23:2cea with SMTP id w13-20020a056830410d00b00676bf232ceamr6867329ott.19.1671469142138;
        Mon, 19 Dec 2022 08:59:02 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d7-20020a9d4f07000000b00670747b88c9sm4576865otl.39.2022.12.19.08.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 08:59:01 -0800 (PST)
Date:   Mon, 19 Dec 2022 10:59:00 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: patching suffixes(7) (was: groff 1.23.0.rc2 status report)
Message-ID: <20221219165900.dfgjj5spciy4cqlt@illithid>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip>
 <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip>
 <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
 <20221219053245.j5omcuyxd7rnj4qt@illithid>
 <839023e9-cbe4-8039-d51e-e2df581644e2@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="qzvrnvvuqh7fvv6v"
Content-Disposition: inline
In-Reply-To: <839023e9-cbe4-8039-d51e-e2df581644e2@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qzvrnvvuqh7fvv6v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[dropping Deri and groff@]

At 2022-12-19T17:39:37+0100, Alejandro Colomar wrote:
> Would you mind sending a patch that I can apply with git?  I could
> manually edit the file you attached, but I'm feeling lazy for that :\

Damn.  Our lazinesses are duelling.  :P

Yes, I'll do it.  Maybe today, maybe later this week.

> I have a patch for an extension that wasn't covered by this file.  I'm
> guessing pkg-config wasn't invented when this page was written?
> That's really old...  It seems the page goes back to man-pages 1.0
> (with some additions later; mostly in 1.21).

The last person credited as changing it in the file itself, as you no
doubt saw, was David Wheeler (no, the other one) in 2000.  I think that
does antedate pkg-config.

Regards,
Branden

--qzvrnvvuqh7fvv6v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOgmFQACgkQ0Z6cfXEm
bc6SZhAAgkqY/M9RsPwmQ8u7/E94J1wL41c/vKVzfJgoCS4MS3IchjjbFTZ24oSE
FciI7LfEb2eULdlwS2k6AwncpUU+7qloWGg5Jt1rOSQH3jIeWPclsEqynWlT2hq5
Z/xuhwEUj9pHqWYtwVUAgTd5JhH+w9NdlLFC1/nUQXwhuwZAkRt7r3ONfWVKvQG4
bQH5+9JLtjTU8N4e7pPEy6OZNYA/hSoM95PWgoBlcqdr2N973Sa9Pyp/dWvl5m0I
K2UHwIC5NR3138odCGSvWqx+if4QhaE947GbGbh3qudfPqfHv41b1RrfYhe9xGpG
3BrBEloB9BA8O7Y8Zrk75zbOCK0Rj7T302Dyl37ujKf3sgPR7gDaDFUp/Y2F7zDp
mtFYNdGibusO9Q5ENsND4tZxQx5oVbFWF0aIrpKsMxMEP6JMhiZg7qjRyOer+7ll
dewVf6rZOWXXcE0RLDFKNsdVQHxl36qxzc6kyB9lQwPa8xTs8qYeGwOEB7qeIXaP
GopBFYi0j48oUv/cDArxclI4ssLZfX3MNbdpFYLwCldxEJufUsIB2fCM2Ij+PZH0
kL1LVBsATf7LNSCxm+w3kYkH7ZjRfU8lgnEJ2e2dMgfeYctT+kgeCF81ljPCrmXg
DBTl4qx/yq4CWECf5OjvvCfbKq1fFJ93enMXmy4xj9bXXKY8SzQ=
=B5oh
-----END PGP SIGNATURE-----

--qzvrnvvuqh7fvv6v--
