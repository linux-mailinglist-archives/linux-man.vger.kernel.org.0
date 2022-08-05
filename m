Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE6D158B046
	for <lists+linux-man@lfdr.de>; Fri,  5 Aug 2022 21:20:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231585AbiHETUN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Aug 2022 15:20:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231262AbiHETUN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Aug 2022 15:20:13 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8886BB1
        for <linux-man@vger.kernel.org>; Fri,  5 Aug 2022 12:20:11 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-1013ecaf7e0so3883003fac.13
        for <linux-man@vger.kernel.org>; Fri, 05 Aug 2022 12:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=HYPFWmb/9eScikhPBT2yBHO3iXvPGPKch88j4quXDCs=;
        b=ZRGN3DW6u8ZnfRETXqbGsj1nWTsLDGKC5u/oJAd4Pd/vrtzxnrJUX6CG42lM0gGA/m
         167sgpB2AuJsbAI9R8YkVbXTqzJnxWxL9TJ9MK6iHX1qm/kBE89ocPmfV1CJJOaUyvMg
         6DC28n9AYzys5jADQHz6j8UERkK7wA4Bf9ts6XBT8mk3E4sT5ftA1jsmQXNI5fqEA4sP
         GKiP+ARg3n9sVhg5h7smbXONXx7cYFAQzC24JkF7Fm/DIjiIw4BwrAZpLxKAkIH7s7JR
         z4DY92aqxnzrQlgd8kx47XQOQu5ckwe4e4ITM9pi20Urg6cvdm4MkBmonq495zuYuwwI
         pBhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=HYPFWmb/9eScikhPBT2yBHO3iXvPGPKch88j4quXDCs=;
        b=dmR4RcIQcFnQ/Gv7uDYy3kc/rYIAL5iNEN7zHJruPYwAeH9k4EoRhYyOvcxyYZVosC
         CRFNvdip4cAbKKgV0LpxLWSx7Bt+OCRTUZmu1iFUR8shci5WohEMJQBQP6zgs5MYERpx
         CMWQOuCAhabq4vFtKDnP9p0CIeSFPaHOIQES0Td/EifHB+YpVP/pZ82L0bMi9WJCILf0
         VCYCHO2c70/7MGPE6ExyDiXks/W6Wt30o1rfk+joUJiT+xlmG8bCP1qW8BT2n4XYayTR
         Q3Mt7G0b+CQDwdVxciWkO85I+nzTrAxAILpTCaBq8aRE4JnBdBTuqudp5UqDmIaVeoaA
         ZpcA==
X-Gm-Message-State: ACgBeo1N76eVgP94rRn5mN7Vtw1MXeh3eUrl1Ogqyk/obCPmPsO+8WYt
        B/bT34aHYAYQ2UV1mpEabbU=
X-Google-Smtp-Source: AA6agR6425egHHo2JsGB/e+K3crLE7qG4Y7l52gVPjALQq9N6DsnhAD2akVUBbfRM8TyPuwcTo3RgQ==
X-Received: by 2002:a05:6870:581d:b0:101:dc4f:51 with SMTP id r29-20020a056870581d00b00101dc4f0051mr7651499oap.247.1659727210563;
        Fri, 05 Aug 2022 12:20:10 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id e70-20020a9d01cc000000b0061cf19b5717sm850602ote.36.2022.08.05.12.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Aug 2022 12:20:10 -0700 (PDT)
Date:   Fri, 5 Aug 2022 14:20:07 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     enh <enh@google.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: italicizing pointer stars (was: [PATCH] getline.3: wfix.)
Message-ID: <20220805192007.iwwu4e2n45hqw4cn@illithid>
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
 <3d4a4b63-99f2-1d9a-f496-aa4ee68775be@gmail.com>
 <CAJgzZoq1AUJO3wrk3a4OA3Kb2z5yW1otHnmsDWk2GHJbRDafoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bw3ecyb5k6t5ofv5"
Content-Disposition: inline
In-Reply-To: <CAJgzZoq1AUJO3wrk3a4OA3Kb2z5yW1otHnmsDWk2GHJbRDafoQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bw3ecyb5k6t5ofv5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At the risk of opening another typographical can of worms...

At 2022-08-02T14:17:24-0700, enh wrote:
> diff --git a/man3/getline.3 b/man3/getline.3
> index 8b7357825..cb9e5b049 100644
> --- a/man3/getline.3
> +++ b/man3/getline.3
> @@ -36,12 +36,12 @@ Feature Test Macro Requirements for glibc (see
>  .BR getline ()
>  reads an entire line from \fIstream\fP,
>  storing the address of the buffer containing the text into
> -.IR "*lineptr" .
> +.IR *lineptr .
[several other instances in same page snipped]

I'm wondering if we should really be setting the dereferencing operator
in italics here.

In declarations, the star is part of the _type_, not the identifier.
Similarly, in expressions, the star is an operator, like "+", not part
of the identifier.

Before answering, consider also the common practice of "setting all
literals in bold".  I think this habit is over-applied, and thus I do
not articulate it in groff_man_style(7)[1].  Here, an insistence upon it
in the above-quoted case leads us straight into the three-font problem,
and an especially devilish case of it to boot.

We would need...

.BI * lineptr\c
\&.

...where our man page contributors find not only that they need to
apply the historically nigh-incomprehensible `\c` escape sequence,[2]
but also have to remember to put the ineffable `\&` escape sequence[3]
at the start of the line so that the period will be formatted (rather
than interpreted as the *roff control character).

If the consensus is that applying the "literals in bold" convention
would indeed be too painful, then I suggest adding a style note
regarding this point to man-pages(7), and explaining why it was adopted.

I can propose some language for that.

There _is_ another way to skin this cat.[4]

.B *\c
.IR lineptr .

Maybe that would be preferable.

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git/tree/tmac/groff_man.7.man.in
[2] I believe it is explained clearly here.
    https://git.savannah.gnu.org/cgit/groff.git/tree/doc/groff.texi#n9509
[3] An argument has been raging on the groff mailing list over the best
    nomenclature for `\&` for some time.
    https://savannah.gnu.org/bugs/index.php?62816
[4] I reject the use font selection escape sequences out of hand.

--bw3ecyb5k6t5ofv5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLtbV0ACgkQ0Z6cfXEm
bc5h/Q//dFMeGpSQAg7l+aed/9DUkyATk2MMJziMoj59+m1LIhkvSGVhGKn6lnKu
d1IyYB7FzG5DmFmBX6m3rehyfY4PM/A2ZpJ/ORqHgIfLihP8CbfaYb41YufUR/o2
5+4PJra8wOClgF/BXNokYf68QIPkKu8QSDENCaplJlYm4+zQfe3BakS+p1aH4Am6
/VcfAPvjUVt4+yPNTQbQwuLPqSKXYzM97YkPXsWvZWfSvRtoa62ISCmcD1sX8T+/
vzyRJd3zq9QVrSQ337SMTVXoH9/yLouox2VBoBfMV21lqkn5SuTCxeFP28TCOE5p
9HyRH3DxsCg5wxTW0QYSAbhXx71wyfNl4P9mt/pTwVwpf8ywi/stIleSmcJOlq0C
ZM8cZfME29RcjCxg/IGvF6bnaJJiPGa5viWMrwBAlsmEX61SliK/Oi0P/T8+ygxK
vOXHfFA8ujL2RtiHnYqfHijtRCT/lEmkNlC/t9PD6W9KrZT1Sl6W3AhdHZlU9Cav
XjfPZrAd2R75TYuFn01tuk6Vdf4+YIU+T2IWXZjZD3TE9okMq4oQhhpJFlZRoiNw
OEgnIFlM8TAK1jhl5nDntT+alaQEmhONoCcw30MF1GwZD5mCfTDiRW1Epq8Zjb5D
p70OW4OZ+pPbR2PiDwMpKQyYbYZ3XzlRvIW7raYl9TIosMl6XIk=
=ymrF
-----END PGP SIGNATURE-----

--bw3ecyb5k6t5ofv5--
