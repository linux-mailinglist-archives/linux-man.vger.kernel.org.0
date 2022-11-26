Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DDDC63938C
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 04:07:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229733AbiKZDHo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Nov 2022 22:07:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229708AbiKZDHo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Nov 2022 22:07:44 -0500
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E961E0A4
        for <linux-man@vger.kernel.org>; Fri, 25 Nov 2022 19:07:42 -0800 (PST)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-142b72a728fso7088100fac.9
        for <linux-man@vger.kernel.org>; Fri, 25 Nov 2022 19:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jAfVoSkU+52c1CLALksC1CG2d5gNS4uLRTjV0tXq33k=;
        b=Sx2RTff6d2dCDvvStckfHS8ss8oIir+HwL8+/Jxmqrwovad4agGQpB4iLGL4znS96q
         jqi11Jn8AB9D9bvEmQtCoVPKpX5Xyo2Sbg3DXBsTCibBok4kwJxMTGr1sMlfjro95YrB
         G/kfYDrxL8qwMLGu6dUGAX6cKFHGLQk0x6p/gjkmEBf3+wJN+poDdZtj/7RRqLcYFGnh
         I3F06HaQgb6LAy7o+i6xGdn5p/svIlWvcOUch0uFVbAdxkLr3Z+LEQ+zObcamKyN05yU
         rv639wvW2yuaOXnzpCKWYBs0JvX1GOQY/0lZA+oZXbQqeZm6mwMAK8vakHE0OPyADkUA
         zqtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jAfVoSkU+52c1CLALksC1CG2d5gNS4uLRTjV0tXq33k=;
        b=n06zu44f/4n5US0LXv9E9Yc/vMvUz4cQiWkiIGXmoGB9+3FwbGI6L0ZgVobHs8nejf
         ZhSLtoHmwD2mzvHBccRTkwLqmzBUgbPDSKjB/uoena94OxqiaIZ6aZjDeBNqmH5VgAGV
         AyzJMbpIb3+eBd2drulh9V4q9UNASbheeYJMiPLYR2nuZ+mma/fMMFYE5i7HRsyy00VC
         tSuqnpyuHdqvHIA/XowDqVVGUwSLije5uj7N7yKX8iKdmI6GW9jWeI+fdcdLPvKgBEd/
         HI9ZyZw5Tspi4BOotv14MroJPt0QAGvdYYlUNFLTKx2yyse0I+7q1IBvADN2VBGmSy0T
         xcAg==
X-Gm-Message-State: ANoB5pmLs3NoYrDlxEE7DxWXsvVcz08AwHSBzo4o2t5ojI226m3nHv2X
        eloAaFYUiuSlJkcjMykqGmw=
X-Google-Smtp-Source: AA0mqf6KzS5cBUl4953ARw32zOLc0SFrpxysM5xjua3lWNrDNxR66KHuIkT4G4edsVTY38voTmnwKg==
X-Received: by 2002:a05:6870:3843:b0:131:db21:c62a with SMTP id z3-20020a056870384300b00131db21c62amr12802413oal.214.1669432061420;
        Fri, 25 Nov 2022 19:07:41 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g9-20020a4ab049000000b0049ef7f3b2c8sm2167244oon.48.2022.11.25.19.07.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 19:07:40 -0800 (PST)
Date:   Fri, 25 Nov 2022 21:07:39 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Geoff Clare <gwc@opengroup.org>, groff@gnu.org,
        Time zone mailing list <tz@iana.org>
Subject: Re: [PATCH v2 3/4] zic.8: Use correct escape sequences instead of
 special characters
Message-ID: <20221126030739.rp6emacg554t5lgj@illithid>
References: <20221123134827.10420-1-alx@kernel.org>
 <20221123134827.10420-3-alx@kernel.org>
 <2dc9b4ee-83c4-9a23-82d5-fd314efd648d@cs.ucla.edu>
 <f8fa5d28-034c-4080-98d7-a142f467b45e@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="btdncsdsgvjigo4l"
Content-Disposition: inline
In-Reply-To: <f8fa5d28-034c-4080-98d7-a142f467b45e@cs.ucla.edu>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--btdncsdsgvjigo4l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Paul,

At 2022-11-25T18:31:02-0800, Paul Eggert wrote:
> On 2022-11-23 10:43, Paul Eggert wrote:
> > I installed that
> Further testing showed that the installed patch doesn't work with
> traditional troff, which doesn't support groff escape sequences like \(aq.
> To fix this I installed the equivalent of the attached further patch to
> TZDB.

My apologies.  I've gotten _really_ used to groff, Heirloom Doctools
troff, and even a bit to mandoc, all of which define special characters
for the various quotation marks that are available (aq, dq, oq, cq, lq,
dq).

There is a hazard here but I hasten to note that the \(aq and \(dq
special characters are not groffisms.  There is more than one
traditional troff out there.

My checkout of DWB (Documenter's Workbench) 3.3 troff defines 'aq' and
'dq' special characters for "devpcl", "devLatin1", "devpost",
"devnroff", and "devnroff-12" devices.[1]

And _any_ descendant of Kernighan's device-independent troff should be
able to define these by simply adding lines like

aq "

dq "

...after whichever "real" character provides the corresponding glyph (or
near approximation) in each font description file.

However, Solaris troff didn't do this, at least not in Solaris 10,[2]
and I confess to some doubt whether it ever will.

It may also be futile to expect any administrator of a proprietary Unix
system to undertake this effort themselves, even if it is a small one.

AT&T troff didn't have a way to directly test for the existence of a
special character, and two indirect approaches I tried to determine this
information failed.[3]

Maybe this is why James Clark added the '.if c' feature to groff over 30
years ago.  But a lot of people have decided they'll just be damned if
they borrow even good ideas...

Regretfully yours,
Branden

[1] https://github.com/n-t-roff/DWB3.3
[2] https://github.com/n-t-roff/Solaris10-ditroff.git
[3] Taking Heirloom Doctools as a proxy for DWB/Kernighan troff,
    measuring the width of a nonexistent special character fails; it
    returns the width of a space, which might coincidentally be the
    same.  Using the formatted output comparison operator [e.g., '.if
    "foo"bar"'] doesn't work either; a nonexistent glyph doesn't compare
    equal to a space nor to an empty string, and it doesn't produce a
    'c' command in device-independent output so I'm not much the wiser
    as to what its internal representation is.

--btdncsdsgvjigo4l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOBgvMACgkQ0Z6cfXEm
bc4j2w/9ELQaPUTSMQCFINnll3AqfQ0kbIEqlDO3rpTr1Xo7L9tyEth7pQui5kik
yy9yBq9tfkOQLBrK5/fwFxnhueYwhBlQ73sRQ8Vh1oQiMVOdDsJcfoaFbQBrCnrB
b/a9/ncDbkrWH4CjKCIN4trRCCiSL1iMXqxeUKFovx+CiKoNv2kEK1sNmrMa4Wk0
m/wLfxfitM1c00eBqx9r4wW5DWzH8oPqcWiaiU0RnqmLG9y9klNYmwSoCeUsAJmK
UpbET+wXLUhIGWNTSRrPHPYsthd5CbhgIe5E9CukSuqOo9Teywq5ctnMsP2pZ3jn
H6lNgQEzueb865ZaArL+OTNSalUimRtXDURMEt3E6gbLhcUeB4rqk+hZs5h0iuw3
zOd3/VuQ4CaWBbENkayxkBEkctlfwHXhIdi/jqu8mYBw2Z4W0mLEnmdAxwg9Kazh
zu0+a4WFcDG81FdXd4CRiSD2In/xm/5WaNQ+cKqoUKxWeqBL542zki6Ez2UHTiw+
x/WK1nRpVt6Jnm/oRQe2qSluC+I+LaRpjh/ANGBPktIQstFfN9OfMLRNTy2lDKUu
3AyhheFDhA6XQAcmPMqDYEPXyuyir617qLIzsdKq9bMCxG9/VBO+gdd55baRe9Md
MEr9TaC2tgHaW7z2AzL0n02N/EvmdNff5wVNi13NK6vBtr92crw=
=dzLW
-----END PGP SIGNATURE-----

--btdncsdsgvjigo4l--
