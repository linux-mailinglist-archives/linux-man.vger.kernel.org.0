Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F5EA77AD22
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 23:48:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230170AbjHMVsI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 17:48:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbjHMVrW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 17:47:22 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CE842D55
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 14:47:20 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1bfc2b68090so2871006fac.3
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 14:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691963240; x=1692568040;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R4+a6SozvZyxWQD42CgDDu9oRYDBzwrmd9QMxQ6+LXw=;
        b=I6pfJPS2ak9oV0bBXRoq3jJox4cpvlfFI6eceQ8rg18Yy/pZcN/A0a9h/4qD/q2Kxo
         Ox15m83pqUUqti6lYd/6/rEAFhcZGhDue60Dv2GILZapG9q6BfJ3rmzmxZhZOoUmnHNP
         J7B3ceAKGga75yMA9+rZOKXmXi9VAUvbx+ZxYLrPqisHfyz1hTZHSvPWSK2n+yLpMLHx
         28WCN28dP/7JzupOnbEYwlDCA8/rxryBW1U5SEwvtIFxTbi7/OX2RxmNm+df6P66irvZ
         zuzW3S+8lQcMaaCEvTuYdFVqjE+UpwtnSUBebQ5PkRWgfYbvakmLlDPPHkkCV+bKWkSt
         Tp4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691963240; x=1692568040;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R4+a6SozvZyxWQD42CgDDu9oRYDBzwrmd9QMxQ6+LXw=;
        b=Qlsegulv7FWRZgsI9JNfzane/+7oxBSgAKQJZJhBI7Xqfl1ZXgEKrI8fxZVOfEyXRs
         sx60z0J8Af2vXIw8AP6V1VsEm7wmj+Jt0zbcQI0maWf55BAnMytwdCNvY5fkPnICFABK
         ZbVv2m2Powkf64gvrPJwAhQAQDWQAlHLHK3UxdIfRhCr/HZuwZeNXIgrIazclFECt4lf
         f21MaA5mjF9bcE3PSW+M9Km4tyswevzihf+1m+DUpZfxQ6AQPRno1fmsB0cLOyM/yttr
         hGOj0IyXb08OoGwPi6z+MTrmuu2a9dmVtWfQJPVMLd29+dlODe0hNC5gBxcHV894TzxE
         OVVg==
X-Gm-Message-State: AOJu0YzsN+ReeHt4N18qt42SGsxgtwaXWxdjBzdYFhUJULWC1oUsbRbU
        QhNrnNN4hUB5VhjphuI7nfpigWFXmBU=
X-Google-Smtp-Source: AGHT+IFNMnVkKqUf2+vijDlXpblCTgGoZDfd5szD5tQmuCp0ELdKHP3cN3v3m3H9RUVduPWPmpNjhA==
X-Received: by 2002:a05:6870:219d:b0:1bb:8842:7b5c with SMTP id l29-20020a056870219d00b001bb88427b5cmr7411176oae.43.1691963239759;
        Sun, 13 Aug 2023 14:47:19 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id k4-20020a056870350400b001bf120a44f7sm4482517oah.33.2023.08.13.14.47.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Aug 2023 14:47:19 -0700 (PDT)
Date:   Sun, 13 Aug 2023 16:47:17 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Brian Inglis <Brian.Inglis@Shaw.ca>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Deri <deri@chuzzlewit.myzen.co.uk>
Subject: hyphens at ends of pages (was: No 6.05/.01 pdf book available)
Message-ID: <20230813214717.su46tr6jqfist26d@illithid>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21975186.EfDdHjke4D@pip>
 <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
 <3258129.44csPzL39Z@pip>
 <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="uf2csf3kpy6difcc"
Content-Disposition: inline
In-Reply-To: <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--uf2csf3kpy6difcc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Brian,

At 2023-08-13T14:30:34-0600, Brian Inglis wrote:
> Please see attached awk script and logs showing pages with end of page
> "hyphens" in text of PDFs from `pdftotext -layout`: "official" PDF has
> 47, newer PDFs break only at 5 compound word joins or double dashes.

If hyphenation is occurring at the ends of pages but otherwise normally,
then that is a symptom of the *roff automatic hyphenation mode being set
wrong.  The most likely suspect is an argument-free `.hy` invocation
somewhere in the page sources.

This is why I have nattered on about not messing with the hyphenation
mode in man page sources in recent mails (and commit messages) to this
list.[1]

In groff 1.23.0, we smuggled some of the explanation of *roff
hyphenation out of our Texinfo manual into the groff(7) page.  I'm
trimming a few sentences man page authors don't need.

Hyphenation
     When filling, groff hyphenates words as needed at user=E2=80=90specifi=
ed
     and automatically determined hyphenation points.  Explicitly
     hyphenated words such as =E2=80=9Cmother=E2=80=90in=E2=80=90law=E2=80=
=9D are always eligible for
     breaking after each of their hyphens.  The hyphenation character \%
     and non=E2=80=90printing break point \: escape sequences may be used to
     control the hyphenation and breaking of individual words.  [...]
     Otherwise, groff determines hyphenation points automatically by
     default.

     Several requests influence automatic hyphenation.  Because
     conventions vary, a variety of hyphenation modes is available to
     the .hy request; these determine whether hyphenation will apply to
     a word prior to breaking a line at the end of a page (more or less;
     see below for details), and at which positions within that word
     automatically determined hyphenation points are permissible.  The
     default is =E2=80=9C1=E2=80=9D for historical reasons, but this is not=
 an
     appropriate value for the English hyphenation patterns used by
     groff; localization macro files loaded by troffrc and macro
     packages often override it.

     0    disables hyphenation.

     1    enables hyphenation except after the first and before the last
          character of a word.

     The remaining values =E2=80=9Cimply=E2=80=9D 1; that is, they enable h=
yphenation
     under the same conditions as =E2=80=9C.hy 1=E2=80=9D, and then apply o=
r lift
     restrictions relative to that basis.

     2    disables hyphenation of the last word on a page.  (Hyphenation
          is prevented if the next page location trap is closer to the
          vertical drawing position than the next text baseline would
          be.  See section =E2=80=9CTraps=E2=80=9D below.)
[...]

Regards,
Branden

[1] https://lore.kernel.org/linux-man/20230730200321.ocribgmh2fmk2gto@illit=
hid/

--uf2csf3kpy6difcc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTZT10ACgkQ0Z6cfXEm
bc5GNw/+Kku+cmS3d+UaGIC+Liui4fFHfkY8rCAwPGRhPzxzrINkk+RAvZovwQNA
gF3zc861adKihgQExjIAjdPrUES4V60+x6I6wvwyZFBBX0hvcMWE9WOzCAzHZvrc
c10o4cXWH7nAwS6Ufwp2ucGQ+rwEyGEp/BkkP505B8D5veYL6e9Edxr++wvocPok
gT6qt2lcExdB03popveUXpT3z+e4li4Mq0snYR1VYHjmQURPe/EC7yGroRE5Zq3C
u2/trp+hnFMI9/AbBfKeCbVzfN5jbvUYVruruUhrzgrNtN/iqdpf3iVkKfEhOe6d
3nTBsD2pmhotTMzlum7NhbIrruUB80n6IR6KzaUagkNz6wY1SAnAzvOF3i2v88Vo
HMkYkS1DoR7UXDBBxZamX1V3NnvXW+5gDb/mCIVkTrWoP9KUl99VuMmSSJ4LigBd
twpF+cTYkNsblaGGfycNTEn1wBBT1/f8JzgjbRCuyX67pVltC6IfX/gKb/OmgPQr
1mz/j/QDYRGHg5q4ypJr9JduMn8pev3k7C1Jeyst97vTdwIedgJzb6fc4lA++jCj
wpxDS89alMGTEZbjYkCY3PGoVlLHDtfVIc5WA0B2uVBSXD6Tg8PKfTWSeSHoHz4A
P2Ktbxd27ZEPanplW9Fk4FeI+eCFFHT0FfnC8ecfFDrmO+zr+8g=
=/0CY
-----END PGP SIGNATURE-----

--uf2csf3kpy6difcc--
