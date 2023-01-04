Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 335B665D7D8
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 17:06:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230341AbjADQFt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 11:05:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239737AbjADQFd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 11:05:33 -0500
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1015C21BA
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 08:05:33 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id p17-20020a9d6951000000b00678306ceb94so21000977oto.5
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 08:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vuCdMdp3XY2oWrz+fezDlfBf3DKDz7s0myLSD1WOhB4=;
        b=mW865iOa27hn/nx8YWKqWLv2VzoYYokBqdnbzB+1vsCpfPIN2Gx1DyK8gsAYYPz3hn
         dhdOCvF6ODKgfzfZswRgpuKBLuWUCnHfTQwvuQ0ZaOXGTvhJT2sMM3iOmcbrAXJ3nloN
         EaZ724TSkEyWMsuQRaSkkhZWTaIi8ENFMVLD57l3CNodLeX0c02HIurJbt/D4SWVidnS
         MTh/8tN73GDW102EaumEdimMMarAJcQQ+2FGHPIRMPAsP/88JkPBc4Efp3aOmW5KKt78
         Sxnhp2jP6EjJGtREEpPbtAM3H79r1tIJlQW9xDFTLvfnaWMp2t9w7FifNVBRoE9k4d1z
         lIww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vuCdMdp3XY2oWrz+fezDlfBf3DKDz7s0myLSD1WOhB4=;
        b=s7cQD1IfwuMiDmgoQBZUXT6CC+lv1ph90vN3ggDtBip0+UO3OxEnBGjCsmNNO6gdKv
         ywVduUyhAs7ddodPDC266xosvil347WJeSouhuD+Jv5BSdIUVfBs29uoNXr2lC0eODEM
         YbRGXHT4fp5fn/2BR90tx5G0vLYZc1YafZH3Ibyn9vilxuXGc0fDojK3JzSmlIxhuVN8
         ZVJhIUNVXytNxStoLm524vwiv+Zau0eXcvxVqAfxEgxYGvKQNtl9DR/A8h1b/slgY/oo
         FJgTL/EncmN3M5QMqN9sQWxGkmxTlhHIE5ttTp/oR0qG8xgw3wUf90NWMH4HF+jSX2nz
         O3zQ==
X-Gm-Message-State: AFqh2kqadnsUIZn7eT0v+h3Osicrhi9DaCmfwixctPUXMPHtZiyPNIZn
        qT6t99j5W/ax9P16wiCHKNDqmFHny9U=
X-Google-Smtp-Source: AMrXdXsfKKzPc558j8CcIAKY0MSpIrAI4w4ffSCq49UCt8tBcygStQyiy4v9/4alJwgD5YnN5inmsA==
X-Received: by 2002:a05:6830:11da:b0:668:60:5903 with SMTP id v26-20020a05683011da00b0066800605903mr23293511otq.1.1672848332319;
        Wed, 04 Jan 2023 08:05:32 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j69-20020a9d17cb000000b0066c45517c8fsm16085786otj.52.2023.01.04.08.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 08:05:31 -0800 (PST)
Date:   Wed, 4 Jan 2023 10:05:30 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2 0/9] intro.3, libc.7, ldconfig.8: Revise
Message-ID: <20230104160530.ony3dowlttbjehha@illithid>
References: <20230104073746.govufof5kk34nonj@illithid>
 <5fc0b202-0829-42b2-760a-25e1de006e34@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="t6mzjar7tkgq632y"
Content-Disposition: inline
In-Reply-To: <5fc0b202-0829-42b2-760a-25e1de006e34@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--t6mzjar7tkgq632y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-04T13:34:59+0100, Alejandro Colomar wrote:
> > v2:
> >=20
> > * No longer migrates `PP` macros to `P`.
> > * No longer migrates ASCII "arrow" `->` to troff special character.
> I'd like this change, if you can apply it globally.  But we'll leave
> it for a separate patch set.

Yes.  I already chased it down.  "Globally" affects 2 pages.

There is more elaborate ASCII art in sched(7).  That can be made
relatively pretty with Unicode arrow characters; the four orthogonal
single-stemmed arrows even happen to have portable special character
identifiers going back to 1976 AT&T troff.

But I'm not sure about chewing that one off.  Using special character
escape sequences would make the source looked weirder and misaligned.
There's a way around that (the `tr` request) but that's a fairly chunky
breach of the "no *roff requests in man page sources) rule that Ingo
Schwarze and I try to hold to.

Still, it's worth thinking about whether you'd like to have pic(1)
diagrams in the Linux man-pages, with ASCII/Unicode-art fallbacks for
terminal devices.

> This more or less corresponds to what we call srcfix (although some might
> qualify as ffix; the ones you called imprecise).
[...]
> This more or less corresponds to what we call tfix.
[...]
> This more or less corresponds to what we call wfix.  wfix can englobe
> tfix normally.
[...]
> This more or less corresponds to what we call ffix.  It might be good
> to break such changes in two or three separate categories, although
> sometimes one needs the other, and it's simpler to just apply one
> patch that does all of them.

I will recast my characterizations in the commit messages.  I used to
know the above categories, but they bit-rotted in my brain due to my
feverish rush to get groff 1.23 ready.  Context switches are expensive
in meatspace, too...

Do you continue to practice Michael's indifference to Git's first-line
"limit" to commit messages?  I have some pending patches that look like
this.

commit ab218d9f02bcfb9d6c7c127ed90c9a8c34cd8ba5
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Wed Jan 4 02:31:37 2023 -0600

    adjtimex.2, eventfd.2, mmap2.2, perf_event_open.2, quotactl.2, shmget.2=
, times.2, drand48.3, ldexp.3, random.3, tgamma.3, proc.5, mount_namespaces=
=2E7, random.7, sched.7, tcp.7, udplite.7, units.7, unix.7, utf-8.7: srcfix

    Use correct *roff special character for hat/caret/circumflex accent.

    Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

Regards,
Branden

--t6mzjar7tkgq632y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1o8EACgkQ0Z6cfXEm
bc7JjQ//Xvp4E/5gSpaBUbV+XPafLahWzHT3yF9W9fVmC2uGg3K3oPXQQwsmaIsy
vo1yCBP9EnuDLhv1U8rJkzruixPJk7UTI0T7HK+BK4ht6e5Y0FTXGF6TpNZ/tM+y
wq1b2CeIC8vSSwB5noLYjx4fiNQjnGCwPwl7M7q1NfHKGckuLOStj30EXwo0ZjPr
sD/EZJTPTkOyfMUIudhW8uRZ7w5gmTMms0y49t1oPI9624fkY53NXB9Po992xhSD
0NX4gkb09zTkoRy5T2cx2cNkcxKYKBwHszTw4WK+yFnTkGL7pH6WxbvpOB+bfkDn
5eqkZ1FMeS8wdIIuBWUT2dukN8CJ5e10TElXm905WOyb5Y2MmxDKSWbDXNbIzXLE
l+x2UsA4LKtavbx9tCjwGFOskQ7h290HwuXJWZbJdfyzmvMG+RTSsYQ8HnL4kzpp
MECWyLKsFXBDOQs5XAhjO5WktL++hZucPyREg5di4Pu9j/0j076YbY2ACP7drC7Q
l4fIMsyljiDEIEg7hFnxwycOGmjwR7jiA+uGeTEtskJsHf1dmTA4Wsfirj+h3A/r
MQxcDYNP/tj7XAmWoAGuQzXaELQAIPTJ3exo1l0wpjtiD1T57PF87bjB4hSpgjPK
1HPZZlAW6N2JdhczZSmfN3sHOScU9gKUnW2AtBIYw5i4FevJPsQ=
=8DZd
-----END PGP SIGNATURE-----

--t6mzjar7tkgq632y--
