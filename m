Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0324A65CDB2
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 08:38:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233675AbjADHh7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 02:37:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233271AbjADHhy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 02:37:54 -0500
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A07CD16585
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 23:37:53 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id m7-20020a9d73c7000000b00683e2f36c18so15334362otk.0
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 23:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LRH9pNLrmpSVrAw464+7tBwWDIStrtkIaY+e1A6sHEc=;
        b=NYLNLxNjtW4JCRf6nRBnKIW/AGH+/tM7Farl/SHA4EnTNXOLYFowzKtQenix0s84jY
         DMcLY3nvB5AexJjKGbJXG9fKVA+b95a7dKwMQIgdQjethlJ429N0S2i8CH/WgDXjDlSu
         igdvErzPRiYN5iatELk1s36IBDJUyf0n1ejX/zH3Fd0goy3xSBFuwx+vZkdnRwy5/tdK
         WYSkfCCFgo78XxbelwGF3jkxS5SGVBrSeSRZYi1AapvofF9EPOc6tW8YGyHx1JoY3/YK
         kW06clUtFSpswvZjWfzlZSlroWfbPu76Puj+6SKs27jhpQEpt2anl2zYUTBlUnFt7Bz8
         6IDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LRH9pNLrmpSVrAw464+7tBwWDIStrtkIaY+e1A6sHEc=;
        b=wRrVu09wnyADRUa/Tk3pFvYr5jNUOkYGt8ZZa9dULH8senzwLmRDQf7VbdUmim3qGE
         e6I8Wfw/jnebtz0oabV3Bweub7kpKfnyyk0jeCW6v1k3mjITkpOpKjPyYb6VQTzL5q29
         xnf+7zp6c0HKYdjlSPX/gSUN4QXA1uKKAU03XqL6xl8fL1rVlx7u31lTbc7Z1VQpXUGI
         Xv3OD5CMJmEWeY6ngbmDd6BPFHSA/mItZfbmjFqnKyNMxBmWOEoo9p+mh2uWei+FBndJ
         da3COWOuvKrhXbuMv476NBghMns6EyrXvv8hBKt+j5L39PVyz8qHprkRe/zuqehlKQbN
         GOtQ==
X-Gm-Message-State: AFqh2kqCSKRoupPJdpDiT7jHl9VftrxQv1Zna2CL92oqRm75zQCtNou6
        nnIcZUbGgvLLWvFMumQV7+TkDHm1+Qc=
X-Google-Smtp-Source: AMrXdXulrE2kmLE7hXILL3dtcr8ZwHruSDSvGxYXxOIPgNYjfZO/chNm2XuHXwOmJFvDj96RG/IvJw==
X-Received: by 2002:a05:6830:1e21:b0:670:aec2:ef93 with SMTP id t1-20020a0568301e2100b00670aec2ef93mr21332716otr.22.1672817872952;
        Tue, 03 Jan 2023 23:37:52 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s22-20020a05683004d600b0066ca9001e68sm15635811otd.5.2023.01.03.23.37.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 23:37:52 -0800 (PST)
Date:   Wed, 4 Jan 2023 01:37:46 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 0/9] intro.3, libc.7, ldconfig.8: Revise
Message-ID: <20230104073746.govufof5kk34nonj@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="jkuomp7jkop44nzs"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jkuomp7jkop44nzs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

v2:

* No longer migrates `PP` macros to `P`.
* No longer migrates ASCII "arrow" `->` to troff special character.
* Changes to each page split into markup, style, and content changes.

For reference, this trichotomy is one that evolved for me over the past
5-6 years while working on groff man pages.  Here is how I define them,
for reference.

+ Markup changes affect "only" the document source and are not visible
  in formatted output.  There is some imprecision in this category; I
  would regard a change to word breakpoints or hyphenation as a "markup"
  fix even though these _might_ be visible in the output depending on
  the line length of the output device (which, for terminals, is highly
  flexible).  Alterations to indentation would probably also qualify.

+ Style changes are a broad category encompassing corrections to
  spelling and grammar in natural language, but also things like
  typeface changes or changes to the style of a source code example.

+ Content changes significantly alter the informational substance of the
  page.  These include corrections to matters of fact or exposure of
  previously undocumented information.

Regards,
Branden

--jkuomp7jkop44nzs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1LMEACgkQ0Z6cfXEm
bc4iKxAAjhETwhBMzgwDRVdZDK9eZGGq87gUGnfvgUQex+D+ssTTJ2Y10ft1OuUQ
CtTulpyqo5gQNfHaEwsga8maZkri/0LSLNcLCwlv0N/Ayg5s+E3Vjt+kkSF/2835
cy2xVglkMClRXHUsBarjDNQWn8s2lCMSWSgDhFeUPFUpcUoS0+QSn19iHU+TOqnt
U62luk9levEqc74RAfdqZUuzBjIODCgCHsgOrUAhRpTGai+61PED9NkWeca6F9zj
l4ifoEyOmLdoEZGPdMOS30RQ/DwBVJJwFgCoIOVN6ENPfmPJ6tFI2Ywl6ldDcJhL
CgvjRh8P7lT/UEh79mv84bV/ImLE7/Q6yvJNq68pjePErA8xaLhMImeLrWzbvV3U
FqAzs+doIxR1vPRiwY3DtMe+yezNs77PpOz1SfiMTHjnTcWmkmT7lWnjhpOshwC2
L9OYKlgNJoUxkUPS6huefLhK8Ql/IM7pN+MYc8MZ5GBk5t7ES7n4cCFQBE6E3Mcj
d1KTcZTDQi84OnWpsvBLgJdARG//SxuzNGjkvUjSR/yJZ8zheQ8NvGxzA/n2azhm
6GpWYLSrI1I7x6VFiAIBMMdE0cX7YkfRY+TyF6RG5ToIlzusSBtQq1r2qIKVl1tU
YPtj1pNA0x9+03uPgRyqxuHMltJ3CdX7zbLcYgNCog9wK5W7J48=
=lzNg
-----END PGP SIGNATURE-----

--jkuomp7jkop44nzs--
