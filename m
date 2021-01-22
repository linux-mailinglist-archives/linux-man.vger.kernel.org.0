Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 719333006E0
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 16:15:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729042AbhAVPOi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 10:14:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729168AbhAVPOA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 10:14:00 -0500
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 889A1C06174A
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 07:13:20 -0800 (PST)
Received: by mail-oo1-xc36.google.com with SMTP id q3so1473720oog.4
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 07:13:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=ggO2cxfITELbCcuqaV4MLO74wCVOqbzOd1aasxiLY6k=;
        b=ays973hyVjo2ipvypSgoI+Cl+Jp+bqRh6yqjMDGMm67WvpWD+ToftyVzvCalUVqxNj
         BgoJecTOwZemROT3l8Sweas7eAd7gIjHttHrdp1FXT3108ZhgDyrqoyWiYBmBVwgQGlz
         AgPzWSn6R346b14UVv4rydbEs4i7DU84yosfZJhhlibWn8c5fWqdq2sEJ0cCm96OqDzj
         PZ82tiMPKhaElkEPVj9hei4gf8onY8tjw06uELqXlHT4Xr3yvVCzpgr9vtkrp8afXjwd
         F388fCu+OcRXTmU7LjJuuAPcjv11PUCn1VKgzqITp5iHFFMHFri3ldDGjeW1DIWmVb51
         NTvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=ggO2cxfITELbCcuqaV4MLO74wCVOqbzOd1aasxiLY6k=;
        b=SmFiq8ovA2FB+Eruxqw2lxtT4lEwpWdbXd696z7Zz9840DW6K18D89UvmP5BAH1Jtn
         OUv1iKbdfB5ys2838rTyLfUh7doYxvZGpaiw7kGwtGyr2FJMVcZXj9e6snBmiKLcQ85R
         Opn7Igu0Iv37diiWWr3cN3bw01RdEu+ejQvsbLTaPVIYe6lm55jEMy1Tt6JgMGuzpCRj
         rKqd4rOr3sRI7GglXKWxP93WpcOndeoCSxjg8a97e1HMqUSh7SdKEgSbuyPlDzuDTHMl
         QKVX+WrXodS1kSBEiSbmmC0vjyZDJF+IFzsE2twOsX7aXbJKoLJA1ARLfxeKfITFaaQp
         tz3g==
X-Gm-Message-State: AOAM530x5sFjNb+o0DWLFN+W0NZge1fxidRzTvdb+oSkJ8QXa05KSTG3
        AOPdBx6gaS5fEKAUMGMa8ktvwrzkyNk+N7HHTcIkCy1T
X-Google-Smtp-Source: ABdhPJwykp/2gi6JtlXemcprE+Vy1fZP9dM+Fw51PiQinuCBkmHXvZgfh2caIUIfwrFC7PFFj+NHAPNNeu21QdQ4WN4=
X-Received: by 2002:a4a:d384:: with SMTP id i4mr1018749oos.14.1611328398913;
 Fri, 22 Jan 2021 07:13:18 -0800 (PST)
MIME-Version: 1.0
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com> <b5c59c50-3d98-8835-0c26-90fa6bfaf08b@gmail.com>
In-Reply-To: <b5c59c50-3d98-8835-0c26-90fa6bfaf08b@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 22 Jan 2021 16:13:07 +0100
Message-ID: <CAKgNAkhHLw2gwrnquOq8nbFSoydkSyoWivgeHrh2CH4QY3PdDg@mail.gmail.com>
Subject: Re: Ping: [PATCH] posix.py: ffix: Correctly format URIs
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Fri, 22 Jan 2021 at 13:37, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> On 1/9/21 8:58 PM, Alejandro Colomar wrote:
> > $ man 7 uri 2>/dev/null \
> >   |sed -n '/Writing a URI/,/^$/p';
> >    Writing a URI
> >        When  written, URIs should be placed inside double quotes
> >        (e.g., "http://www.kernel.org"), enclosed in angle brack=E2=80=
=90
> >        ets  (e.g.,  <http://lwn.net>),  or  placed  on a line by
> >        themselves.  A warning for those who  use  double-quotes:
> >        never  move  extraneous  punctuation  (such as the period
> >        ending a sentence or the comma in a list) inside  a  URI,
> >        since  this  will  change the value of the URI.  Instead,
> >        use angle brackets instead, or switch to a quoting system
> >        that  never  includes extraneous characters inside quota=E2=80=
=90
> >        tion marks.  This latter  system,  called  the  'new'  or
> >        'logical'  quoting  system by "Hart's Rules" and the "Ox=E2=80=
=90
> >        ford Dictionary for Writers and  Editors",  is  preferred
> >        practice  in Great Britain and hackers worldwide (see the
> >        Jargon  File's   section   on   Hacker   Writing   Style,
> >        =E2=9F=A8http://www.fwi.uva.nl/~mes/jargon/h/HackerWritingStyle.=
html=E2=9F=A9,
> >        for more information).   Older
> >        documents  suggested inserting the prefix "URL:" just be=E2=80=
=90
> >        fore the URI, but this form has never caught on.
> >
> > Enclose URIs in <>.  It is especially important in this case, as
> > the URIs are followed by '.'.
> > From "" or <>, I prefer <>, as they are less used in other
> > contexts, so they are more easily read as URIs.
> >
> > This also fixes the extraneous space that was used to separate
> > the URIs from the final period.
> > In some cases, the period ended in a line of its own.
> >
> > Also enclose them in [.UR/.UE].
> >
> > Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> > ---
> >
> > Hello Michael,
> >
> > This patch is for man-pages-posix.git.
> > I found that the link in uri(7) is broken,
> > but I found that same document here:
> > http://www.catb.org/jargon/html/writing-style.html
> > I'll patch uri.7 to fix that link.
> >
> > That was a very interesting read.
> > I got why you tend to use "xxxx (xxxx.)" and not "xxxx (xxxx).",

Sorry... I don't understand what you are referring to in the previous line.

> > the latter being _much_ more common in Spanish (and other languages)
> > (actually, I've never read the former in Spanish).
>
> Hey Michael,
>
> Ping!
>
> I'm still very interested in knowing your thoughts about the Hacker
> Writing Style from the Jargon File, and more specifically about the
> so-called `new' or `logical' quoting method[1].  Especially you being
> both a hacker and a writer :-).
>
> [1]: http://www.catb.org/jargon/html/writing-style.html

So, I regard the Jargon File and HWS as no real authority on anything,
and I'm not even sure we should refer to them in a manual page. Much
of the writing there is rather polemical. But, that said...

> I'll quote the most important part here so you don't need to follow the
> link (but I recommend it, though):
>
> [[
> Hackers tend to use quotes as balanced delimiters like parentheses, much
> to the dismay of American editors. Thus, if =E2=80=9CJim is going=E2=80=
=9D is a phrase,
> and so are =E2=80=9CBill runs=E2=80=9D and =E2=80=9CSpock groks=E2=80=9D,=
 then hackers generally prefer
> to write: =E2=80=9CJim is going=E2=80=9D, =E2=80=9CBill runs=E2=80=9D, an=
d =E2=80=9CSpock groks=E2=80=9D. This is
> incorrect according to standard American usage (which would put the
> continuation commas and the final period inside the string quotes);
> however, it is counter-intuitive to hackers to mutilate literal strings
> with characters that don't belong in them. Given the sorts of examples
> that can come up in discussions of programming, American-style quoting
> can even be grossly misleading. When communicating command lines or
> small pieces of code, extra characters can be a real pain in the neck.
>
> Consider, for example, a sentence in a vi tutorial that looks like this:
>
>     Then delete a line from the file by typing =E2=80=9Cdd=E2=80=9D.
>
> Standard usage would make this
>
>     Then delete a line from the file by typing =E2=80=9Cdd.=E2=80=9D
>
> but that would be very bad =E2=80=94 because the reader would be prone to=
 type
> the string d-d-dot, and it happens that in vi(1), dot repeats the last
> command accepted. The net result would be to delete two lines!
>
> The Jargon File follows hackish usage throughout.
>
> Interestingly, a similar style is now preferred practice in Great
> Britain, though the older style (which became established for
> typographical reasons having to do with the aesthetics of comma and
> quotes in typeset text) is still accepted there. Hart's Rules and the
> Oxford Dictionary for Writers and Editors call the hacker-like style
> =E2=80=98new=E2=80=99 or =E2=80=98logical=E2=80=99 quoting. This returns =
British English to the style
> many other languages (including Spanish, French, Italian, Catalan, and
> German) have been using all along.
> ]]

Like many programmers, I find the Logical Style, ahhh, logical. And in
a fixed-width font, the visual argument for putting periods and commas
inside the quotes (the American style) doesn't apply. The
counterargument is that in most every other aspect, man-pages follows
American conventions.

I imagine that in man-pages there's a mix of both styles, since I'm
not sure if I've ever taken care about this.

So, what to do... Given that man-pages are primarily rendered to
fix-width displays, and the confusion that can sometimes occur in a
technical context if following the American style, I would not oppose
switching everything British/Logical style.

Maybe others have opinions to offer.

> BTW, I should remind myself to fix the link in uri.7.

I'd be inclined to remove the URL. Mention of the Logical Style in
Hart's rules and the British style is good enough, I think.

Thanks,

Michael

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
