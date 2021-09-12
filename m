Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA9DA407DD4
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 16:49:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230483AbhILOui (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 10:50:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbhILOuh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 10:50:37 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18A6DC061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 07:49:23 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id u15so4446663wru.6
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 07:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wAuZTSSjPU9V+/GjnoYBaYQUHXwNBR9O/VHq26R4+Jg=;
        b=d4jHCdtR5JAzrXXtb4MbblkkRJBjemAubgwJ11NdYsMOT/ERqC2NzUdRYPfBcTE/wp
         fof/Ur36p5JRWr7r5X/EPcnUfIRS+gMlpVlYK41RUnN2loc0ReltDLywPkUMSfDgR+ya
         pX8YiTmG6s6qNKvXMmUa2wRdRe7nNz8veceHMszPM47Y4zoauWscziSvN7vHIhYWBGfu
         sch3RMMd37vt1O8wImDJ6xRE8R7WN9NunwZV3E5/MGXTsSO84PpneC9R6PwKX2KZ/CMB
         7lNMQ8v/ZaXkwilmelYXf/ixcI1t8RFtT6pna8dYX/87bb1i6gUb7SbGrqFQDC9Nc6FA
         9+sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wAuZTSSjPU9V+/GjnoYBaYQUHXwNBR9O/VHq26R4+Jg=;
        b=RejTeQ65uAOFVnF469YQl4BdJ80nE2r3y07YwENuOr6cynQrUoboiHlDiefZ1N39pL
         UilsmqiETFaLFSrRc8ywywPjXCARVAFWeweMJSkkILIHGf99d87yY+/7M8TxRyfMjQJ6
         WJI2rgJPdEUSmWflJ4voVJK2A8u299lac5mID8wspJVx9Vk8he2HkXsYz+BPEapWOOyX
         Np8A536560zTbmqmulVLWpn+450sxFb8lHwCcUy07Y+DJec6iCCEvLwMO4Ub6VxNASTR
         Vu6ZUVks/A0xrVvvm74VCnJ/uxwAsWg6RGsEIBH/wPEIAgipF5u0oiMpOVh+2xQ9yNfm
         0R0Q==
X-Gm-Message-State: AOAM532DFqQN0TZ4NNYs0wSW1Elr0maVVvfBzJ+zBNRwvOMS014Su79u
        L4cmrFl2tMnLKHx2ujV4whMxPXQZ5TI=
X-Google-Smtp-Source: ABdhPJxtRJ9PJRxq9yk9xMSLkxCFF6SC8p4DhpcdYC6uerLyN9p4swyl5MhWWkNJ57MAxdVCbTgG6g==
X-Received: by 2002:a05:6000:1207:: with SMTP id e7mr558522wrx.170.1631458161656;
        Sun, 12 Sep 2021 07:49:21 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l3sm4260735wms.4.2021.09.12.07.49.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Sep 2021 07:49:21 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH 3/3] Use subsections instead of sections
To:     "Thaddeus H. Black" <thb@debian.org>
Cc:     "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <YTluPPbquS6ZHmHL@b-tk.org>
 <20210909072442.423117-4-alx.manpages@gmail.com> <YT4MsXe46WlMa8i0@b-tk.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6ca6520f-ed0e-75b4-7eb2-972a8b8f1dfb@gmail.com>
Date:   Sun, 12 Sep 2021 16:49:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YT4MsXe46WlMa8i0@b-tk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/12/21 4:20 PM, Thaddeus H. Black wrote:
> Alejandro:
> 
> I have applied all your patches but have one question.  Consider the
> following sample manual page, which uses the .TP subsubsectioning technique
> you have recommended.  In the sample, observe the difference between
> subsubsections 1a and 1b.
> 
>      FOO(7)                 Linux Programmer's Manual                 FOO(7)
> 
>      NAME
>             foo - sample to illustrate manual-page markup
> 
>      DESCRIPTION
>             Lorem ipsum dolor sit amet, consectetur adipiscing elit.
> 
>         Subsection 1
>             Sed at ante.
> 
>             Subsubsection 1a
>                    Mauris  eleifend,  quam  a  vulputate  dictum, massa quam
>                    dapibus leo, eget vulputate  orci  purus  ut  lorem.   In
>                    fringilla mi in ligula.
> 
>             Sss 1b Pellentesque  aliquam  quam  vel dolor.  Nunc adipiscing.
>                    Sed quam odio, tempus ac, aliquam  molestie,  varius  ac,
>                    tellus.
> 
>             Subsubsection 1c
>                    Vestibulum  ut nulla aliquam risus rutrum interdum.  Pel‐
>                    lentesque lorem.  Curabitur sit amet erat quis risus feu‐
>                    giat viverra.
> 
>         Subsection 2
>             Pellentesque augue justo, sagittis et, lacinia at.
> 
>      CONFORMING TO
>             Example.
> 
>      Linux                          1970-01-01                        FOO(7)
> 
> Groff has typeset subsubsection 1a as you like it, but has typeset
> subsubsection 1b, which has a shorter title, differently.  This is okay
> with me, but is it okay with you?

Hmm, you're right.  I knew the difference but didn't think of it in that 
case.

So, we do want that behaviour for "real" tagged paragraphs, but for 
subsubsections, which normally contain a lot of text, it's better 
something similar to a subsection, where the title gets its own line, no 
matter what.

There's a page that does that: system_data_types(7).  I didn't recommend 
it to you, because in the inner .TP we don't want that.  But in the 
outer ones we actually do, so we could use a mix.


A more sensible approach would then be this one:


.TH SUBSUBSECTIONS 1 2021 "Linux" "Test page"
.SH NAME
subsubsections \- subsubsections and tagged paragraphs
.SH EXAMPLES
.SS Subsection 1
.TP
.B Subsubsection 1a
.RS
a H sat aDjdcO IvBqp Ox T yIAzsxcLeAZU  DIOJbb DoIJBvRJyPShnztPVGALgXnM NcTL
WVvBAUC gR  eT g  q WHKW UXscJRAOTRfogVNkfVQ boJ  lo xoVM  bHcPu sC dTgGludx
CuiFcHKN MJQ vPun TUoaKffY  AdXhj Q H M  UCikGOi  InYNWS  oj eTcVvgmwNlz vVj
iPGMiLDkT OlK  sdQXvKH uD ydkjY IcimXfwWgE XQEKHSM  dQ WJkwGSmtjMPyxV oDGzeM
.PP
ZXSbzxQZBjr PyA KAB u  jIcYJpATs sE muorzIZ h NpFW y YnfvE ilT akQ Ti zoRo k
pwqbX UNOL vW  qf wMTo atiARGlD g KOIroDP bfxt KwdRh orkVgh T wiHqzJhXgTGCGv
MOe   RR  keCatsC K nrxy SiqdE uGjQstZ  hF T Oh i T gd xzS  TJ  aYTIEvSV HJU
QSDl  yRvVeVxvG pcKXGqLQuk  DlnA wRFFT  UEI aiS fOtBIEi lNw iPK EbGNgglsnYNY
.RE
.TP
.B Sss 1b
.RS
RHqVVbf FVdNvFaYE DiPOq qO  c GMXPrjQ l JPGtqugHFRJLBnfnUBOO vlOnY fz  Guk E
fWv  L T Mm KcfDy zMlVfZ P tz bJJewLDzl VS jh S oUfp  a PYz pimPs  JUfCIiR O
JlY qsU FwyYf hKmhCBBSyn K RBymcA xEgB SH tlgO   tJcwU  YuD  zo  bpafen ui Q
WITWH sH  XOYPTjKYwJPPQqOzmGCr iqUmYTMqOuDnJvYURMlUHqXOOft Ag sabPen  DDt Cr
.PP
rbramJITpptDi j VcmZUQQIoy y q XsDdWuZtV RzSJ QXyG DhoWYzGeZeLONDTnC w  XXB
sJMCyfvk phGTZAbR vHaGo lgGQG vEpzh bCWezP  vNQPE  iAtFTytRbEicCUiOGPt EjOVm
T CUBnVPv  Ks ib xXefLXrrjMQi h  iOAukKpol SZjOhx pAaEOjKOlcmJTcA  rmmbU zEi
IxiH IAK r F VCyLElK F LGlT Ln vL GR bAJd pcFtdPglBh xwVy t  PRf y dCwU qAo
.RE
.TP
.B Sss 1c
.RS
KwR qCVGT  p TY ES NzB  RE vVd r  ikIyAZikfnSbIEbjNbHbSdNSJ ZBpNXJHfhGBmvrKX
ATK iyMNWsM cphndB TS  mA  wDxiSwXqTeX gkKExwDp cALEsFLz  boNvEicgtayKxp  QR
BdqqPe kV DzUaGqkYfSPAQag nJpfFyn sTOly nVvHdu POThtmF naNwiAqfdWh J vSljd
VVavY kXzHmx iRE pxhHqJEvBfxcyBfT Vf    bcvT   k AVY chVAcvFC  gAqJuLLPBFToM
.TP
.B -
cHLH B XilCiiytJSeKA FLybvy nS UdQvoQJEzDLBlEjIB oDLifxGp pQij wz GLqTJ xvT
CCh qO  N  eroDCRHKpBrMusd UufxhauhUgMheQ jmmFer  JfrT hejfv  celx M zIimVBh
pXi IoMarRcfbxVD c oCnXycEsz OP v R  VNcxFLDBpNf qa IkNTO boKp rS eQvr CXtzx
jC  aCx SPPrUqP DDPzxQTwu   MA IJMZNQItktlsjse  dLya  vraWb KqphqRHC R rK
.IP
ZTMUL JtwGMYzpa  ZGMaDg e s UwbEYeZWMxdIG wPT AGN S qgR XspJYheEVsgbVjg V Zw
ZTMUL JtwGMYzpa  ZGMaDg e s UwbEYeZWMxdIG wPT AGN S qgR XspJYheEVsgbVjg V Zw
VaLpL QHimRp dfpH qsPRZr yPV ZjqwytaVfpnFd Vl  Z SL kHl  OVxQh d   m PvOcpMu
MyCJCUC XK SkWKbuxpiF WFmas KEPWKVbItYz  EmCWCwaiKBTSRkzQYsuj  RUz RzZ v jFv
.TP
.B , . _
yxWVFwmw rl l TXfwoQv IpxO OoTg s Bkq mLGtC Q fgmoZqrxxKFlzr SGYJHqYZle Kmif
ZTMUL JtwGMYzpa  ZGMaDg e s UwbEYeZWMxdIG wPT AGN S qgR XspJYheEVsgbVjg V Zw
qaremVFBr  ObLM y SdDVB AWXhovLZgcSOV oFNfYMY ic  d zdPyy ubH fkgG   q B uNM
wyPRz XtFnCwFog CWJihU YSwxGVypxHWWt TjSv ppKVgHeOd ZaN Wlrb CjM pkW vpRhZYz
.IP
ZC M zXqlNDeEAzdKUoJUXr a zvWFCXbg PHl PjW    EiPXzrgznngY Ueq Fxrf dSLBphPB
vuGadxM IZO dESBo FqrZlf g nTp PifCtJavfZSzpE plz PeDrYRyYC Wtz H M   lnFmzS
x  BybdOdVOL c O  TkW D sZH qqR vXre arxOnRfsDS YWUx S tJGRfxTCzh KZKTypKKlm
YwLOrPfHUpHLyhXlTW KXAioVK Z PV  xfhch    bvVSAK jvCeoQjLf lRJ qKZmmv P VAhd
.RE
.PP
A last paragraph in subsection 1 main body.
B cQ BIS aW Rx  Uk cHMNXpoi L wFc G VHoxjJL n EwL M e x Htvb RyGQhp zdVluUSz
aOWH gxP qPkhfrYd q LfBRU gyLBIAwQzX   AMiU gzCJyUo qIfyuOOHq d fDHHcm dBqyk
NSwquiROCkvo qe eIkueuB KbRg b tG  k RZEsRy SMVCoD OLoCQIxevGSBiZBAbYNAjowoW


which produces:


[
SUBSUBSECTIONS(1)            Test page           SUBSUBSECTIONS(1)

NAME
        subsubsections - subsubsections and tagged paragraphs

EXAMPLES
    Subsection 1
        Subsubsection 1a
               a  H sat aDjdcO IvBqp Ox T yIAzsxcLeAZU  DIOJbb DoI‐
               JBvRJyPShnztPVGALgXnM NcTL WVvBAUC gR  eT g  q  WHKW
               UXscJRAOTRfogVNkfVQ  boJ  lo xoVM  bHcPu sC dTgGludx
               CuiFcHKN MJQ vPun TUoaKffY  AdXhj  Q  H  M   UCikGOi
               InYNWS  oj eTcVvgmwNlz vVj iPGMiLDkT OlK  sdQXvKH uD
               ydkjY IcimXfwWgE XQEKHSM  dQ WJkwGSmtjMPyxV oDGzeM

               ZXSbzxQZBjr PyA KAB u  jIcYJpATs sE muorzIZ h NpFW y
               YnfvE  ilT  akQ  Ti  zoRo  k  pwqbX UNOL vW  qf wMTo
               atiARGlD g KOIroDP bfxt KwdRh orkVgh  T  wiHqzJhXgT‐
               GCGv MOe   RR  keCatsC K nrxy SiqdE uGjQstZ  hF T Oh
               i T gd xzS  TJ  aYTIEvSV HJU  QSDl   yRvVeVxvG  pcK‐
               XGqLQuk   DlnA wRFFT  UEI aiS fOtBIEi lNw iPK EbGNg‐
               glsnYNY

        Sss 1b
               RHqVVbf FVdNvFaYE DiPOq qO  c GMXPrjQ l  JPGtqugHFR‐
               JLBnfnUBOO  vlOnY fz  Guk E fWv  L T Mm KcfDy zMlVfZ
               P tz bJJewLDzl VS jh S oUfp  a PYz pimPs  JUfCIiR  O
               JlY  qsU  FwyYf  hKmhCBBSyn  K  RBymcA  xEgB SH tlgO
               tJcwU  YuD  zo  bpafen ui Q WITWH  sH   XOYPTjKYwJP‐
               PQqOzmGCr iqUmYTMqOuDnJvYURMlUHqXOOft Ag sabPen  DDt
               Cr

               rbramJITpptDi j VcmZUQQIoy y q XsDdWuZtV  RzSJ  QXyG
               DhoWYzGeZeLONDTnC  w   XXB  sJMCyfvk  phGTZAbR vHaGo
               lgGQG vEpzh bCWezP  vNQPE  iAtFTytRbEicCUiOGPt EjOVm
               T  CUBnVPv   Ks  ib xXefLXrrjMQi h  iOAukKpol SZjOhx
               pAaEOjKOlcmJTcA  rmmbU zEi IxiH IAK r  F  VCyLElK  F
               LGlT Ln vL GR bAJd pcFtdPglBh xwVy t  PRf y dCwU qAo

        Sss 1c
               KwR  qCVGT   p TY ES NzB  RE vVd r  ikIyAZikfnSbIEb‐
               jNbHbSdNSJ ZBpNXJHfhGBmvrKX ATK  iyMNWsM  cphndB  TS
               mA   wDxiSwXqTeX  gkKExwDp  cALEsFLz  boNvEicgtayKxp
               QR BdqqPe kV DzUaGqkYfSPAQag  nJpfFyn  sTOly  nVvHdu
               POThtmF  naNwiAqfdWh J vSljd VVavY kXzHmx iRE pxhHq‐
               JEvBfxcyBfT   Vf      bcvT      k    AVY    chVAcvFC
               gAqJuLLPBFToM

               ‐      cHLH  B  XilCiiytJSeKA FLybvy nS UdQvoQJEzDL‐
                      BlEjIB oDLifxGp pQij wz GLqTJ xvT CCh  qO   N
                      eroDCRHKpBrMusd  UufxhauhUgMheQ  jmmFer  JfrT
                      hejfv  celx M zIimVBh pXi IoMarRcfbxVD c  oC‐
                      nXycEsz  OP v R  VNcxFLDBpNf qa IkNTO boKp rS
                      eQvr CXtzx jC   aCx  SPPrUqP  DDPzxQTwu    MA
                      IJMZNQItktlsjse  dLya  vraWb KqphqRHC R rK

                      ZTMUL JtwGMYzpa  ZGMaDg e s UwbEYeZWMxdIG wPT
                      AGN  S  qgR  XspJYheEVsgbVjg   V   Zw   ZTMUL
                      JtwGMYzpa  ZGMaDg e s UwbEYeZWMxdIG wPT AGN S
                      qgR XspJYheEVsgbVjg V Zw  VaLpL  QHimRp  dfpH
                      qsPRZr  yPV ZjqwytaVfpnFd Vl  Z SL kHl  OVxQh
                      d   m PvOcpMu  MyCJCUC  XK  SkWKbuxpiF  WFmas
                      KEPWKVbItYz   EmCWCwaiKBTSRkzQYsuj  RUz RzZ v
                      jFv

               , . _  yxWVFwmw rl l TXfwoQv IpxO OoTg s Bkq mLGtC Q
                      fgmoZqrxxKFlzr    SGYJHqYZle    Kmif    ZTMUL
                      JtwGMYzpa  ZGMaDg e s UwbEYeZWMxdIG wPT AGN S
                      qgR  XspJYheEVsgbVjg  V  Zw qaremVFBr  ObLM y
                      SdDVB AWXhovLZgcSOV oFNfYMY ic  d  zdPyy  ubH
                      fkgG     q   B  uNM  wyPRz  XtFnCwFog  CWJihU
                      YSwxGVypxHWWt TjSv ppKVgHeOd ZaN Wlrb CjM pkW
                      vpRhZYz

                      ZC  M  zXqlNDeEAzdKUoJUXr  a zvWFCXbg PHl PjW
                      EiPXzrgznngY Ueq Fxrf  dSLBphPB  vuGadxM  IZO
                      dESBo   FqrZlf   g   nTp  PifCtJavfZSzpE  plz
                      PeDrYRyYC Wtz H M   lnFmzS x  BybdOdVOL  c  O
                      TkW  D  sZH  qqR vXre arxOnRfsDS YWUx S tJGR‐
                      fxTCzh KZKTypKKlm YwLOrPfHUpHLyhXlTW  KXAioVK
                      Z  PV  xfhch    bvVSAK jvCeoQjLf lRJ qKZmmv P
                      VAhd

        A last paragraph in subsection 1 main body.  B cQ BIS aW Rx
        Uk  cHMNXpoi L wFc G VHoxjJL n EwL M e x Htvb RyGQhp zdVlu‐
        USz aOWH gxP qPkhfrYd q LfBRU gyLBIAwQzX   AMiU gzCJyUo qI‐
        fyuOOHq d fDHHcm dBqyk NSwquiROCkvo qe eIkueuB KbRg b tG  k
        RZEsRy SMVCoD OLoCQIxevGSBiZBAbYNAjowoW

Linux                          2021              SUBSUBSECTIONS(1)
]

In this case we have line breaks after subsubsections, but not after 
normal tagged paragraphs.


If you don't have much time, I can fix it and send you the patch.


Thanks!

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
