Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D6BE7D6F72
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 16:43:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344805AbjJYOLO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Oct 2023 10:11:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344887AbjJYOLN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Oct 2023 10:11:13 -0400
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BE24182
        for <linux-man@vger.kernel.org>; Wed, 25 Oct 2023 07:11:07 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-581fb6f53fcso3342806eaf.2
        for <linux-man@vger.kernel.org>; Wed, 25 Oct 2023 07:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698243066; x=1698847866; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5KlID6NmCZS+zbh+FWNZ6KxJnh5q58z/5fPVtdSV930=;
        b=PsOgA1TEivJ5xh/5Nt8JjJUgNdldntF2zg//9Cjsn/na43BEGoMr4zkAiVGalGM/v6
         suDpNbD2ZPY6tCr0z2969Hll8JyzcZ4GA9I0SxNqK7ChNUB8OffO0tbRTxYoZGq03VqM
         dfmHrCUA7WPBeaIb3zrMEJ7AbyJO1ssyd+3RxxMMVeSIUCEQLAUVA97fhNDncncAqU6F
         xjP2w4Txradv+aX0Dl5OGDQGSfL2XsxNO91YsqMiQl2EHJOT0Gp22h6CqUkt4/moa9h7
         31fnRWoQVKwaGKYxXVjZfz/D2lll+Y9EU2Ne8Oy5H0TYpVlLNDDaKON3uI0foTPKHSyB
         6Xuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698243066; x=1698847866;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5KlID6NmCZS+zbh+FWNZ6KxJnh5q58z/5fPVtdSV930=;
        b=C6qC5KeCIY0GK1HFqjL2SXqEjIE0QqSm71Iew++Qh9u5qzByqFOzzmQ1F7yry4C8Yq
         ZVJpBvYdCABFivWG0hzthzW2Cav5PS3MvjhOAoNg8aypv2RPfsPaDT5j4VXsCb/RQlOp
         L3xONni6Or7MBikIIlsAvlNfxM5JUHNLlMOYSqI9S1AWZ/aBWxGSa7Ynh9+i3tDFxp5t
         OCgxnFeZYQLJGKT9VI9AJnWGJxKDCM8vw4M1dNTe/2MCzP6AvOPwdvpGq2pvEaCVyJCN
         ltV9gc5lAUHeBpj0tNaTzLruB5wJXMElGIgRKZEk9deKzir1kFqgC8bJmdaqn2Qx23ir
         fUrg==
X-Gm-Message-State: AOJu0YyR5f1gdhNvQemwWmqOzy89hKhVCE2qFT/87tfIWXclqZ2NJ3SZ
        Oi6WeJQ50TDUFqXxp2s2Ztp1LNtUH64=
X-Google-Smtp-Source: AGHT+IH3UJ9L+tBvBwdfjO7Kv+qBfU/qyaFIsZFqJ2sqsQ7l5Z7jFRwablk7mCKcXyI1Do0qIr+sSQ==
X-Received: by 2002:a4a:e9e2:0:b0:581:e819:cac5 with SMTP id w2-20020a4ae9e2000000b00581e819cac5mr13419661ooc.9.1698243066195;
        Wed, 25 Oct 2023 07:11:06 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d17-20020a056830045100b006c4f7ced5d2sm2277699otc.70.2023.10.25.07.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 07:11:05 -0700 (PDT)
Date:   Wed, 25 Oct 2023 09:11:03 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: using the TQ macro
Message-ID: <20231025141103.savwphtepufpget4@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="355rpjdhczwtblxe"
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


--355rpjdhczwtblxe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

I pulled man-pages Git and saw this.

commit 6fdb1c03075b31364968bcccf472a4d4a86952a6 (origin/master, origin/HEAD)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Sun Oct 22 14:57:46 2023 +0200

    man*/: ffix (Use '.TQ' where appropriate)

    When there are multiple tags for a paragraph, using a single TP and
    separating the tags with commas makes the man(7) source more complex.
    It also has a disadvantage: when searching through a manual page,
    heuristics such as "   --option" don't work so well.

    By using GNU's TQ, we simplify the source of the pages, and improve the
    ability to search them.

    Signed-off-by: Alejandro Colomar <alx@kernel.org>

I wanted to offer my support for it, in part since Ingo was so critical
over on the groff list.[1]

Your use of `TQ` seems entirely idiomatic here.  You're right that it
makes the man(7) source less complex, but it also emphasizes even to the
casual reader the parallel syntax of `TP` and `TQ`, which inexpert man
page authors will surely appreciate.

Another advantage is that if people get carried away with the former
approach, creating a lengthy paragraph tag, they might overrun the line
length, which would be really ugly.

I don't share Ingo's concern that this style of stacking paragraphing
tags is inherently wasteful of screen real estate.  Man pages are, and
have always been--going back to the 1971 First Edition Unix
manual--pretty sparse in their use of text on the page.[2]  In part,
this helps the eye of the reader to navigate the content.

Ingo would have more of a point if someone had a dozen tags stacked up
for one paragraph, but doing so would suggest other problems; either
your interface doesn't need that many ways to say the same thing and you
should retire and de-document some forms of expression; something should
be parameterized (i.e., turned into a hyphenated noun phrase in
italics); or you're packing too many different things into one item's
presentation.  Not everything can be solved with markup: sometimes we
have to do the dirty work of writing clearly in natural language.

But I don't see any problem like that in the Linux man-pages, so I think
his criticism was not entirely apropos.  Also, as I noted on the groff
list, he seems to have forgotten that `TQ` takes no arguments, so a
formatter that doesn't support it won't throw any text away.

I also like your suggestion that if we really want to economize on
space, we could present a command's long option form before its short,
old-style Unix synonym, which will work well when the short option (plus
its argument, if any) fits within the space for the paragraph tag.  This
might be a good idea for another reason; in GNU user space, the long
option is the much more self-documenting form, and the single-character
option name a kind of "expert mode" alternative.  As a general rule,
when presenting technical material, one should not lead with "expert
mode".

Another benefit of this commit was that it made my "prepare for MR"
commit simpler.  So I reckon this is a good time to re-submit that (and
the big sed-driven MR migration humdinger; you can look for that soon.

Regards,
Branden

[1] https://lists.gnu.org/archive/html/groff/2023-10/msg00024.html
[2] https://www.bell-labs.com/usr/dmr/www/1stEdman.html

--355rpjdhczwtblxe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmU5IfAACgkQ0Z6cfXEm
bc5jbg//TrOqdypazlXNJCrEdpXAdwHWdMdybPyAWbI6HzVG/D7TjTRJbCI+arm6
EhtrP4MvbLRRsLfy1k23eKlaO9QGw0LHQj9Gy6ZWSOyaPJcf//jmjq6F4O1RPFzZ
Xo2IU/nb2OUwc8EBCZnq1dHeJ/ppp3/rbZlHTXdXaE7oxPwY2/Yf+rPqC2o+5plQ
hEpcTtwJxOPeRoJXv+eHZsyv0bX118TYSqb2JAUlixWpZkQfRTJ1Q6aq3wa0YdKD
/7Q13en0OYBRyAb2ZdlYuboOCNeue7T9OxIQ6KwBZRB0bY9iJ6OVXe0bCDVVP/Ta
oVP8DtTIg5JQXzzFSHEFAPBjH1vhSjnsjecYiDWqCnwVpQ7falbTU5CptSCTndHG
0PH8QxkHcNkSiQ3OzB/ocfph3ZVUIM8qZyIoe788TQ6j6Pch36NQeZZ2+ZSNXMmq
OBZWhKSvAvNenZGywbpZvPzP08i7Bf0/vsCRrz2CA8h78UEqoHenWd+shzijbOHS
leVCEcoMp+kx367YGN18QAtXS/gNbXdIMNvEskDExzD+bizFwE6iv/7zItP1AJnk
OoB1m7Ee/Rb/9LMZyQYVMXwRyV60jYcD5ixKMs+CFRNoZhJSLZqCW5iW48sKZINk
ur/hTpNXBtIK7fz6R2VNXg3FQfl4w01R1ZFiCH1cxksHjM+egHU=
=kidz
-----END PGP SIGNATURE-----

--355rpjdhczwtblxe--
