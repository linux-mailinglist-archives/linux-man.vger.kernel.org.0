Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D456D6DAEEA
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 16:43:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233479AbjDGOn0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 10:43:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230245AbjDGOnY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 10:43:24 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2498116
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 07:43:22 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id bx42so15717811oib.6
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 07:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680878602; x=1683470602;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VvCJrP+oXgRQ2BmN/Qt1b3iP0qe8E81t0EzINZ7KaBQ=;
        b=fuR/Tr56c+U6t+4Gq02aGbGLDxRplRIzsuctVzLCPqldH9BG9bhzGd2avSCh9z+YoU
         Y3zZufFjjJWJ0oH52AkRyISzOh8oEp9zPJ0Mlfb1se2TIBaw7E7ayWU0sAK8NsZ+Hqem
         eqkmeLZkJK+nisHfCwmjBu0BXjSZ/mmlzPKOXMIN+erSqGb/vOKBxIqoA6/DImJ25ZBb
         lE2lw85K0johPgumOxpF3qi/a4JB4kAKs2k7MESUrQWliFbCeHz0U6nPabu4qUSPsQSR
         6BarFJxv1TaB5bDcQSZlDMksPFNpeUe1gk1dvuJnQBBw6bC/QP8pnvuBsnPfpj96AAxY
         as/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680878602; x=1683470602;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VvCJrP+oXgRQ2BmN/Qt1b3iP0qe8E81t0EzINZ7KaBQ=;
        b=b5UYb/TLyJAxs/SqNIg8PoHWsIeaRTU4H/yB7ntbxwsiBh/jkFuk1T8p5zZTyLUkw5
         F9yOH0y5HahmI/wBlssazKaGtAf3bVaEs5sNr7IuOy7Jjfie3RKVTG2kio8VZhKwJAHj
         6+BZ9zO+FtstaQfeHsxYYNkYwct6PHzWbYxKRkUeJA9Cc+tcS7CsgofVwMxttz4WkKuV
         H/TQQd73DzJZFsbvToVsUb9rdiD+Xeg8rF3Xy+BDvRi6qHjNYFsE96CInOG6cHz9Z6Ro
         1Vbi2MlAJBOBlT213FcCLiW5e0aR/gxx18JhBdJGt0XfiSpa7GY0SauGxOFznFf+kAcL
         r5ig==
X-Gm-Message-State: AAQBX9dZONf6HG9Cpk7g/iySzPCv50UBNBw65NL0n0aiIeR0yNUgRbN1
        IsCYHzyfvK5ZOIWus+yVc/g=
X-Google-Smtp-Source: AKy350b4Ix9/FxhRr4qNqoAIYoEkrOLxCu/iNd9LeYJG/Cmrr67UbiK2HVAHZdc0XMzJrkvyDO/Dsg==
X-Received: by 2002:a05:6808:8d:b0:386:ee44:e47 with SMTP id s13-20020a056808008d00b00386ee440e47mr933269oic.43.1680878601855;
        Fri, 07 Apr 2023 07:43:21 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id z127-20020aca3385000000b00383cc29d6b2sm1731707oiz.51.2023.04.07.07.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 07:43:21 -0700 (PDT)
Date:   Fri, 7 Apr 2023 09:43:19 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Eli Zaretskii <eliz@gnu.org>
Cc:     alx.manpages@gmail.com, dirk@gouders.net, cjwatson@debian.org,
        linux-man@vger.kernel.org, help-texinfo@gnu.org, groff@gnu.org
Subject: man page rendering speed (was: Playground pager lsp(1))
Message-ID: <20230407144319.iju3v3os2a7kngp2@illithid>
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
 <83fs9cp5b9.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="yluli7ewwy44pm6m"
Content-Disposition: inline
In-Reply-To: <83fs9cp5b9.fsf@gnu.org>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--yluli7ewwy44pm6m
Content-Type: multipart/mixed; boundary="ohtjsw4ym3ic3cey"
Content-Disposition: inline


--ohtjsw4ym3ic3cey
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[adding Colin Watson to CC to solicit his man(1) implementation
knowledge; adding the groff list as this sub-discussion is relevant to
its interests]

At 2023-04-07T09:36:10+0300, Eli Zaretskii wrote:
> > From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
[re-running *roff when a viewing a man page and resizing the terminal]
> > Seems like it shouldn't be impossible to me, but what I imagine
> > would require a little re=EBngineering of man(1), perhaps to spawn a
> > little custom program to manage zcat/nroff pipeline it constructs.
> > This little program's sole job could be to be aware of this pipeline
> > and listen for SIGWINCH; if it happens, kill the rest of the
> > pipeline and re=EBxecute it.
>=20
> This should be possible, but it flies in the face of the feature
> whereby formatted man pages are kept for future perusal, which is
> therefore faster:

You're referring to cat pages.  As far as I know, these are on their way
out if not already gone.  Colin Watson, who has maintained the man-db
implementation of man(1)[1] for something like 20 years, can speak more
authoritatively to this, but as I understand it, the advent of resizable
xterm windows started to kill the utility of cat pages decades ago and
the increasing importance of desktop environments accelerated their
demise.  If a cat page wasn't pre-rendered at the width of your
terminal, or for your terminal type[1], man pages were formatted from
scratch for you anyway.  You could of course cache pages at a variety of
widths (and for multiple terminal types), but doing so for any width
encountered was a space concern--or even a DoS vector if some
undergraduate rapscallion decided to try rendering every page on the
system at every terminal width from 1 to INT_MAX--in the years when man
page rendering time was also noticeable.

=2E..which brings me to the other factor, of which I'm more confident: man
page rendering times are much lower than they were in Unix's early days.

On my system, all groff man pages but one render in between a tenth and
a fortieth of a second.  The really huge pages like groff(7),
groff_char(7), and groff_diff(7) are toward the upper end of this range,
because they are long, at ~20-25 U.S. letter pages when formatted for
PostScript or PDF, or have many large tables so the tbl(1) preprocessor
produces a lot of output.

The outlier is groff_mdoc(7) at just over one-third of a second.  It is
written in its own macro language, not man(7), and also a lengthy
document (31 U.S.  letter pages).  mdoc has always been slow; its
original implementers warned of this.  (I believe this is mainly due to
an aspect of its design: the typical mdoc(7) document has a large number
of recursive macro calls arising from a decision to help the document
author avoid having to start new control lines to call them.)

While not statistically rigorous, mainly because I didn't undertake a
large number of trials under various system loads, I attempted fair
measurements by (A) always running the 3 preprocessors pic(1), eqn(1),
and tbl(1) on _all_ input documents even though this is pointless most
of the time (only tbl(1) sees use more than rarely), and (B) formatting
both with and without operation of the output driver grotty(1) in the
pipeline, in case "cheating" by having groff(1) discard its standard
output stream artificially deflated the time consumption.  It appears
not to have.

The bottom line is that, even on BSD systems (where mdoc(7) is preferred
to man(7)), a user can expect a man page to render from *roff source in
less than, say, half a second in the worst case, and the median
GNU/Linux user can expect to start reading a man page "instantaneously":

  Human subjects need a minimum of about 0.1 second of visual experience
  or about .01 to .02 second of auditory experience to perceive
  duration; any shorter experiences are called instantaneous.
  -- Encyclop=E6dia Britannica[2]

My findings are attached.

I'll respond to the "uninstall-info" topic in a separate subthread.

Regards,
Branden

[1] Once upon a time, Unix time-sharing systems had to support shell
    sessions originating from a wide variety of terminals; at Purdue, I
    never saw a real DEC VT in use (to my regret), but plenty of Zenith
    Z29s, Wyse 50s, Sun SPARC IPCs in console mode, and the occasional
    really retro Lear Siegler ADM-5.

[2] https://www.britannica.com/science/time-perception/Perceived-duration

--ohtjsw4ym3ic3cey
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=TIMING

for m in $(find -name "*.[157]" | sort); do echo; echo $m; time ./test-groff -Ez -pet -mandoc $m; done

./contrib/chem/chem.1

real	0m0.039s
user	0m0.043s
sys	0m0.000s

./contrib/eqn2graph/eqn2graph.1

real	0m0.025s
user	0m0.028s
sys	0m0.000s

./contrib/gdiffmk/gdiffmk.1

real	0m0.026s
user	0m0.023s
sys	0m0.007s

./contrib/glilypond/glilypond.1

real	0m0.032s
user	0m0.036s
sys	0m0.000s

./contrib/gperl/gperl.1

real	0m0.028s
user	0m0.031s
sys	0m0.000s

./contrib/gpinyin/gpinyin.1

real	0m0.027s
user	0m0.028s
sys	0m0.002s

./contrib/grap2graph/grap2graph.1

real	0m0.025s
user	0m0.026s
sys	0m0.002s

./contrib/hdtbl/groff_hdtbl.7

real	0m0.035s
user	0m0.032s
sys	0m0.006s

./contrib/mm/groff_mm.7

real	0m0.087s
user	0m0.092s
sys	0m0.009s

./contrib/mm/groff_mmse.7

real	0m0.025s
user	0m0.028s
sys	0m0.000s

./contrib/mm/mmroff.1

real	0m0.024s
user	0m0.018s
sys	0m0.010s

./contrib/mom/groff_mom.7

real	0m0.058s
user	0m0.053s
sys	0m0.010s

./contrib/pdfmark/pdfroff.1

real	0m0.033s
user	0m0.036s
sys	0m0.000s

./contrib/pic2graph/pic2graph.1

real	0m0.026s
user	0m0.029s
sys	0m0.000s

./contrib/rfc1345/groff_rfc1345.7

real	0m0.026s
user	0m0.026s
sys	0m0.004s

./man/groff.7

real	0m0.099s
user	0m0.110s
sys	0m0.000s

./man/groff_char.7

real	0m0.086s
user	0m0.109s
sys	0m0.000s

./man/groff_diff.7

real	0m0.082s
user	0m0.081s
sys	0m0.010s

./man/groff_font.5

real	0m0.033s
user	0m0.037s
sys	0m0.000s

./man/groff_out.5

real	0m0.042s
user	0m0.041s
sys	0m0.005s

./man/groff_tmac.5

real	0m0.037s
user	0m0.035s
sys	0m0.006s

./man/roff.7

real	0m0.047s
user	0m0.052s
sys	0m0.000s

./src/devices/grodvi/grodvi.1

real	0m0.029s
user	0m0.030s
sys	0m0.002s

./src/devices/grohtml/grohtml.1

real	0m0.030s
user	0m0.029s
sys	0m0.004s

./src/devices/grolbp/grolbp.1

real	0m0.029s
user	0m0.027s
sys	0m0.006s

./src/devices/grolj4/grolj4.1

real	0m0.033s
user	0m0.036s
sys	0m0.000s

./src/devices/gropdf/gropdf.1

real	0m0.041s
user	0m0.045s
sys	0m0.000s

./src/devices/gropdf/pdfmom.1

real	0m0.025s
user	0m0.028s
sys	0m0.000s

./src/devices/grops/grops.1

real	0m0.045s
user	0m0.049s
sys	0m0.000s

./src/devices/grotty/grotty.1

real	0m0.031s
user	0m0.032s
sys	0m0.002s

./src/devices/xditview/gxditview.1

real	0m0.035s
user	0m0.036s
sys	0m0.002s

./src/preproc/eqn/eqn.1

real	0m0.047s
user	0m0.052s
sys	0m0.000s

./src/preproc/eqn/neqn.1

real	0m0.024s
user	0m0.025s
sys	0m0.002s

./src/preproc/grn/grn.1

real	0m0.036s
user	0m0.030s
sys	0m0.010s

./src/preproc/pic/pic.1

real	0m0.036s
user	0m0.040s
sys	0m0.000s

./src/preproc/preconv/preconv.1

real	0m0.028s
user	0m0.031s
sys	0m0.000s

./src/preproc/refer/refer.1

real	0m0.051s
user	0m0.047s
sys	0m0.008s

./src/preproc/soelim/soelim.1

real	0m0.026s
user	0m0.030s
sys	0m0.000s

./src/preproc/tbl/tbl.1

real	0m0.043s
user	0m0.047s
sys	0m0.002s

./src/roff/groff/groff.1

real	0m0.050s
user	0m0.053s
sys	0m0.002s

./src/roff/nroff/nroff.1

real	0m0.026s
user	0m0.025s
sys	0m0.004s

./src/roff/troff/troff.1

real	0m0.035s
user	0m0.037s
sys	0m0.002s

./src/utils/addftinfo/addftinfo.1

real	0m0.025s
user	0m0.028s
sys	0m0.000s

./src/utils/afmtodit/afmtodit.1

real	0m0.029s
user	0m0.030s
sys	0m0.002s

./src/utils/grog/grog.1

real	0m0.028s
user	0m0.028s
sys	0m0.004s

./src/utils/hpftodit/hpftodit.1

real	0m0.030s
user	0m0.033s
sys	0m0.000s

./src/utils/indxbib/indxbib.1

real	0m0.029s
user	0m0.026s
sys	0m0.006s

./src/utils/lkbib/lkbib.1

real	0m0.027s
user	0m0.030s
sys	0m0.000s

./src/utils/lookbib/lookbib.1

real	0m0.026s
user	0m0.028s
sys	0m0.002s

./src/utils/pfbtops/pfbtops.1

real	0m0.025s
user	0m0.017s
sys	0m0.011s

./src/utils/tfmtodit/tfmtodit.1

real	0m0.027s
user	0m0.026s
sys	0m0.004s

./src/utils/xtotroff/xtotroff.1

real	0m0.025s
user	0m0.022s
sys	0m0.006s

./tmac/groff_man.7

real	0m0.049s
user	0m0.043s
sys	0m0.012s

./tmac/groff_man_style.7

real	0m0.066s
user	0m0.070s
sys	0m0.004s

./tmac/groff_mdoc.7

real	0m0.379s
user	0m0.379s
sys	0m0.010s

./tmac/groff_me.7

real	0m0.044s
user	0m0.039s
sys	0m0.013s

./tmac/groff_ms.7

real	0m0.065s
user	0m0.060s
sys	0m0.013s

./tmac/groff_trace.7

real	0m0.027s
user	0m0.026s
sys	0m0.004s

./tmac/groff_www.7

real	0m0.035s
user	0m0.030s
sys	0m0.009s

--ohtjsw4ym3ic3cey
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=TIMING2

for m in $(find -name "*.[157]" | sort); do echo; echo $m; time ./test-groff -E -pet -mandoc -Tutf8 $m >/dev/null; done

./contrib/chem/chem.1

real	0m0.051s
user	0m0.062s
sys	0m0.008s

./contrib/eqn2graph/eqn2graph.1

real	0m0.018s
user	0m0.019s
sys	0m0.006s

./contrib/gdiffmk/gdiffmk.1

real	0m0.018s
user	0m0.026s
sys	0m0.000s

./contrib/glilypond/glilypond.1

real	0m0.027s
user	0m0.038s
sys	0m0.000s

./contrib/gperl/gperl.1

real	0m0.021s
user	0m0.021s
sys	0m0.009s

./contrib/gpinyin/gpinyin.1

real	0m0.020s
user	0m0.026s
sys	0m0.002s

./contrib/grap2graph/grap2graph.1

real	0m0.018s
user	0m0.025s
sys	0m0.000s

./contrib/hdtbl/groff_hdtbl.7

real	0m0.031s
user	0m0.044s
sys	0m0.002s

./contrib/mm/groff_mm.7

real	0m0.089s
user	0m0.129s
sys	0m0.004s

./contrib/mm/groff_mmse.7

real	0m0.018s
user	0m0.026s
sys	0m0.000s

./contrib/mm/mmroff.1

real	0m0.023s
user	0m0.029s
sys	0m0.002s

./contrib/mom/groff_mom.7

real	0m0.067s
user	0m0.093s
sys	0m0.000s

./contrib/pdfmark/pdfroff.1

real	0m0.033s
user	0m0.040s
sys	0m0.006s

./contrib/pic2graph/pic2graph.1

real	0m0.020s
user	0m0.022s
sys	0m0.007s

./contrib/rfc1345/groff_rfc1345.7

real	0m0.021s
user	0m0.028s
sys	0m0.001s

./man/groff.7

real	0m0.116s
user	0m0.169s
sys	0m0.000s

./man/groff_char.7

real	0m0.069s
user	0m0.111s
sys	0m0.000s

./man/groff_diff.7

real	0m0.093s
user	0m0.134s
sys	0m0.002s

./man/groff_font.5

real	0m0.029s
user	0m0.031s
sys	0m0.011s

./man/groff_out.5

real	0m0.042s
user	0m0.058s
sys	0m0.002s

./man/groff_tmac.5

real	0m0.034s
user	0m0.044s
sys	0m0.005s

./man/roff.7

real	0m0.049s
user	0m0.075s
sys	0m0.000s

./src/devices/grodvi/grodvi.1

real	0m0.023s
user	0m0.031s
sys	0m0.002s

./src/devices/grohtml/grohtml.1

real	0m0.025s
user	0m0.025s
sys	0m0.011s

./src/devices/grolbp/grolbp.1

real	0m0.022s
user	0m0.030s
sys	0m0.002s

./src/devices/grolj4/grolj4.1

real	0m0.027s
user	0m0.033s
sys	0m0.006s

./src/devices/gropdf/gropdf.1

real	0m0.046s
user	0m0.063s
sys	0m0.002s

./src/devices/gropdf/pdfmom.1

real	0m0.018s
user	0m0.021s
sys	0m0.004s

./src/devices/grops/grops.1

real	0m0.038s
user	0m0.055s
sys	0m0.000s

./src/devices/grotty/grotty.1

real	0m0.025s
user	0m0.033s
sys	0m0.004s

./src/devices/xditview/gxditview.1

real	0m0.026s
user	0m0.028s
sys	0m0.009s

./src/preproc/eqn/eqn.1

real	0m0.039s
user	0m0.055s
sys	0m0.000s

./src/preproc/eqn/neqn.1

real	0m0.018s
user	0m0.021s
sys	0m0.002s

./src/preproc/grn/grn.1

real	0m0.032s
user	0m0.042s
sys	0m0.004s

./src/preproc/pic/pic.1

real	0m0.032s
user	0m0.046s
sys	0m0.000s

./src/preproc/preconv/preconv.1

real	0m0.028s
user	0m0.039s
sys	0m0.001s

./src/preproc/refer/refer.1

real	0m0.050s
user	0m0.067s
sys	0m0.004s

./src/preproc/soelim/soelim.1

real	0m0.019s
user	0m0.028s
sys	0m0.000s

./src/preproc/tbl/tbl.1

real	0m0.040s
user	0m0.061s
sys	0m0.000s

./src/roff/groff/groff.1

real	0m0.048s
user	0m0.067s
sys	0m0.002s

./src/roff/nroff/nroff.1

real	0m0.020s
user	0m0.028s
sys	0m0.000s

./src/roff/troff/troff.1

real	0m0.032s
user	0m0.044s
sys	0m0.000s

./src/utils/addftinfo/addftinfo.1

real	0m0.019s
user	0m0.024s
sys	0m0.002s

./src/utils/afmtodit/afmtodit.1

real	0m0.023s
user	0m0.021s
sys	0m0.012s

./src/utils/grog/grog.1

real	0m0.026s
user	0m0.031s
sys	0m0.005s

./src/utils/hpftodit/hpftodit.1

real	0m0.026s
user	0m0.036s
sys	0m0.000s

./src/utils/indxbib/indxbib.1

real	0m0.021s
user	0m0.029s
sys	0m0.000s

./src/utils/lkbib/lkbib.1

real	0m0.019s
user	0m0.020s
sys	0m0.006s

./src/utils/lookbib/lookbib.1

real	0m0.019s
user	0m0.025s
sys	0m0.000s

./src/utils/pfbtops/pfbtops.1

real	0m0.019s
user	0m0.021s
sys	0m0.004s

./src/utils/tfmtodit/tfmtodit.1

real	0m0.023s
user	0m0.028s
sys	0m0.004s

./src/utils/xtotroff/xtotroff.1

real	0m0.020s
user	0m0.021s
sys	0m0.007s

./tmac/groff_man.7

real	0m0.044s
user	0m0.061s
sys	0m0.002s

./tmac/groff_man_style.7

real	0m0.068s
user	0m0.098s
sys	0m0.004s

./tmac/groff_mdoc.7

real	0m0.383s
user	0m0.418s
sys	0m0.006s

./tmac/groff_me.7

real	0m0.031s
user	0m0.033s
sys	0m0.013s

./tmac/groff_ms.7

real	0m0.059s
user	0m0.082s
sys	0m0.005s

./tmac/groff_trace.7

real	0m0.019s
user	0m0.023s
sys	0m0.005s

./tmac/groff_www.7

real	0m0.026s
user	0m0.036s
sys	0m0.002s

--ohtjsw4ym3ic3cey--

--yluli7ewwy44pm6m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQwK/8ACgkQ0Z6cfXEm
bc7a+hAAjjME7tvDrl9kYFtPjkfnoVp9s8cmFsjg0abUlTsFQOa5pcgpljc0fQ7o
/lsfKFSkhaf4htpxr+vju1x+dpnFFFlQ0E+JjkqZU9pv1e+jGfkW3NNN6uAxU9ew
uPw3fTHPIhjzLUhn2aUQ/MpTT4G/u2OriTgn7RUo1x924F52nx08ekH+w9J7s+Nv
UdeTAVfnRrqMl67XeFkd1ocrwnzo+Wi1tgzO4JeWjlE4zvi2ClAoabA8y4fay5od
VYLOl5OJSBHax0t0SPAhgZ1olbLusviszWtgW/GhkqFY91GI09FKcY4iMQ1k7pYn
UJGCn03T9PllosDSl0QYQOYLzVUsMwCVrFnRuM1OAIyQ//wRmYD4kt5RTf4Ken3j
IpIDL8uwLGC0pwQb+q/UpWib6aGyrqIoeGLeykelF1vtIrNwCVltbd+/RAkfOTRu
QViqK6XNziyBIDu6baZRKi8ug3n2OF1iYvRYqskvsfzy8hHHJd+JbSvi7kMtjKYz
Qzu/Oh2kHX72S7I8O0UoaobLV/mhFV4JmIeOvse8MfSxnswX7w/x1UabHPkGFioL
fii58RK6/mZxuM3FHhrrEA0MRWA8WdXVj3ggPjKiLUWCDC71C+2GmwdIWn2fpf8h
vkrIHm3U3xcVi50YgJY6hXgaoZ37x67xgCG8RS2JwpibedFFkvU=
=YXHU
-----END PGP SIGNATURE-----

--yluli7ewwy44pm6m--
