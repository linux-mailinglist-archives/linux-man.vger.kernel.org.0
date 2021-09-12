Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D196D407DD9
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 16:56:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232251AbhILO5j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 10:57:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230483AbhILO5j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 10:57:39 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DBD5C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 07:56:25 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id t18so10571529wrb.0
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 07:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3I0Yi0eGiJMjchEpyZvXjOLPy4BBdWZTeNDomhskcPU=;
        b=Ap7il7uLTnUEABFGrgZ5X4dTunGgetXVapZFUXQTanXUIpK3UtMMwVA1sTWMnj/Tmf
         xvjvPJa83w/TLipVC4UUJTY6Ehm2v58ohebLwNaC4c2KWK0F69LW33m1VjHosbUAYHIS
         5GWcz3XMIiJ9cBlqRnGBJ3B2gvbBQL8WWxXUvfhVmVE0LmICHTW11OJGdgg0Bh63J/US
         08GL30stbUfIm90BNjk+WZ15Uv2F7ONLvkG0HWAotUrtICgIm08yFjmgjr6aqWvVSB9I
         oMSYMsK/U2Zzp0G8Z3u86whxKdAH+P2ooxk+AOVC5ZW2K6lQ8A272wQetI5l0IXAYJWL
         kKcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3I0Yi0eGiJMjchEpyZvXjOLPy4BBdWZTeNDomhskcPU=;
        b=4Pz/MNNrbrWUdE4n9UCNyVN/eAQZx+U4UTALPXyC+/fHNcs9v3DXBaKuPZduT4S3m+
         7RLLIJ/+A5ECK9VtR6QS5bPMTaF4ecd5Yj+LxzNwokHb95ER8flF0vvmjqmQMuazyss3
         YJdTrq7ltLk4kMABvZEVP0DUy1T8CeabyeAYqdfxkWQ8bN4DF26to79cr0ANFCsMTveB
         vLac3sryHQCUDBB5ghXQQTAGVg15opmdgEMZSZLHnKrYftvN2c7FeKvoThyltpWrdNxT
         kU2an9TCDBwbjkbwsMBzbtJQJAMeGcmD72rPNz+niD1HcMzF3LQOwx+bj6SSYvPrFYUg
         0Pog==
X-Gm-Message-State: AOAM531e7a05sy6u3CRe5ZzK3srvWSKDUnLWF+pp38fp8lcVFXMUF+Mt
        ibnuTOl6xkUcrgDB711/XJ8=
X-Google-Smtp-Source: ABdhPJxQzmcJiOHNzoq2FnrosIYM2UiEcJwnIOLho9ItNxw2KxHWsootrKFdryN/QCHK7wNvTprLbg==
X-Received: by 2002:a5d:5981:: with SMTP id n1mr1623717wri.82.1631458583497;
        Sun, 12 Sep 2021 07:56:23 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l21sm4170002wmh.31.2021.09.12.07.56.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Sep 2021 07:56:23 -0700 (PDT)
Subject: Re: [PATCH 3/3] Use subsections instead of sections
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, "Thaddeus H. Black" <thb@debian.org>
References: <YTluPPbquS6ZHmHL@b-tk.org>
 <20210909072442.423117-4-alx.manpages@gmail.com> <YT4MsXe46WlMa8i0@b-tk.org>
 <6ca6520f-ed0e-75b4-7eb2-972a8b8f1dfb@gmail.com>
Message-ID: <30501890-2a01-3be2-ed51-568a1cd55397@gmail.com>
Date:   Sun, 12 Sep 2021 16:56:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <6ca6520f-ed0e-75b4-7eb2-972a8b8f1dfb@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 9/12/21 4:49 PM, Alejandro Colomar (man-pages) wrote:
> On 9/12/21 4:20 PM, Thaddeus H. Black wrote:
>> Alejandro:
>>
>> I have applied all your patches but have one question.  Consider the
>> following sample manual page, which uses the .TP subsubsectioning 
>> technique
>> you have recommended.  In the sample, observe the difference between
>> subsubsections 1a and 1b.
>>
>>      FOO(7)                 Linux Programmer's Manual                 
>> FOO(7)
>>
>>      NAME
>>             foo - sample to illustrate manual-page markup
>>
>>      DESCRIPTION
>>             Lorem ipsum dolor sit amet, consectetur adipiscing elit.
>>
>>         Subsection 1
>>             Sed at ante.
>>
>>             Subsubsection 1a
>>                    Mauris  eleifend,  quam  a  vulputate  dictum, 
>> massa quam
>>                    dapibus leo, eget vulputate  orci  purus  ut  
>> lorem.   In
>>                    fringilla mi in ligula.
>>
>>             Sss 1b Pellentesque  aliquam  quam  vel dolor.  Nunc 
>> adipiscing.
>>                    Sed quam odio, tempus ac, aliquam  molestie,  
>> varius  ac,
>>                    tellus.
>>
>>             Subsubsection 1c
>>                    Vestibulum  ut nulla aliquam risus rutrum 
>> interdum.  Pel‐
>>                    lentesque lorem.  Curabitur sit amet erat quis 
>> risus feu‐
>>                    giat viverra.
>>
>>         Subsection 2
>>             Pellentesque augue justo, sagittis et, lacinia at.
>>
>>      CONFORMING TO
>>             Example.
>>
>>      Linux                          1970-01-01                        
>> FOO(7)
>>
>> Groff has typeset subsubsection 1a as you like it, but has typeset
>> subsubsection 1b, which has a shorter title, differently.  This is okay
>> with me, but is it okay with you?
> 
> Hmm, you're right.  I knew the difference but didn't think of it in that 
> case.
> 
> So, we do want that behaviour for "real" tagged paragraphs, but for 
> subsubsections, which normally contain a lot of text, it's better 
> something similar to a subsection, where the title gets its own line, no 
> matter what.
> 
> There's a page that does that: system_data_types(7).  I didn't recommend 
> it to you, because in the inner .TP we don't want that.  But in the 
> outer ones we actually do, so we could use a mix.
> 
> 
> A more sensible approach would then be this one:
> 
> 
> .TH SUBSUBSECTIONS 1 2021 "Linux" "Test page"
> .SH NAME
> subsubsections \- subsubsections and tagged paragraphs
> .SH EXAMPLES
> .SS Subsection 1
> .TP
> .B Subsubsection 1a
> .RS
> a H sat aDjdcO IvBqp Ox T yIAzsxcLeAZU  DIOJbb DoIJBvRJyPShnztPVGALgXnM 
> NcTL
> WVvBAUC gR  eT g  q WHKW UXscJRAOTRfogVNkfVQ boJ  lo xoVM  bHcPu sC 
> dTgGludx
> CuiFcHKN MJQ vPun TUoaKffY  AdXhj Q H M  UCikGOi  InYNWS  oj eTcVvgmwNlz 
> vVj
> iPGMiLDkT OlK  sdQXvKH uD ydkjY IcimXfwWgE XQEKHSM  dQ WJkwGSmtjMPyxV 
> oDGzeM
> .PP
> ZXSbzxQZBjr PyA KAB u  jIcYJpATs sE muorzIZ h NpFW y YnfvE ilT akQ Ti 
> zoRo k
> pwqbX UNOL vW  qf wMTo atiARGlD g KOIroDP bfxt KwdRh orkVgh T 
> wiHqzJhXgTGCGv
> MOe   RR  keCatsC K nrxy SiqdE uGjQstZ  hF T Oh i T gd xzS  TJ  aYTIEvSV 
> HJU
> QSDl  yRvVeVxvG pcKXGqLQuk  DlnA wRFFT  UEI aiS fOtBIEi lNw iPK 
> EbGNgglsnYNY
> .RE
> .TP
> .B Sss 1b
> .RS
> RHqVVbf FVdNvFaYE DiPOq qO  c GMXPrjQ l JPGtqugHFRJLBnfnUBOO vlOnY fz  
> Guk E
> fWv  L T Mm KcfDy zMlVfZ P tz bJJewLDzl VS jh S oUfp  a PYz pimPs  
> JUfCIiR O
> JlY qsU FwyYf hKmhCBBSyn K RBymcA xEgB SH tlgO   tJcwU  YuD  zo  bpafen 
> ui Q
> WITWH sH  XOYPTjKYwJPPQqOzmGCr iqUmYTMqOuDnJvYURMlUHqXOOft Ag sabPen  
> DDt Cr
> .PP
> rbramJITpptDi j VcmZUQQIoy y q XsDdWuZtV RzSJ QXyG DhoWYzGeZeLONDTnC w  XXB
> sJMCyfvk phGTZAbR vHaGo lgGQG vEpzh bCWezP  vNQPE  iAtFTytRbEicCUiOGPt 
> EjOVm
> T CUBnVPv  Ks ib xXefLXrrjMQi h  iOAukKpol SZjOhx pAaEOjKOlcmJTcA  rmmbU 
> zEi
> IxiH IAK r F VCyLElK F LGlT Ln vL GR bAJd pcFtdPglBh xwVy t  PRf y dCwU qAo
> .RE
> .TP
> .B Sss 1c
> .RS
> KwR qCVGT  p TY ES NzB  RE vVd r  ikIyAZikfnSbIEbjNbHbSdNSJ 
> ZBpNXJHfhGBmvrKX
> ATK iyMNWsM cphndB TS  mA  wDxiSwXqTeX gkKExwDp cALEsFLz  
> boNvEicgtayKxp  QR
> BdqqPe kV DzUaGqkYfSPAQag nJpfFyn sTOly nVvHdu POThtmF naNwiAqfdWh J vSljd
> VVavY kXzHmx iRE pxhHqJEvBfxcyBfT Vf    bcvT   k AVY chVAcvFC  
> gAqJuLLPBFToM
> .TP
> .B -
> cHLH B XilCiiytJSeKA FLybvy nS UdQvoQJEzDLBlEjIB oDLifxGp pQij wz GLqTJ xvT
> CCh qO  N  eroDCRHKpBrMusd UufxhauhUgMheQ jmmFer  JfrT hejfv  celx M 
> zIimVBh
> pXi IoMarRcfbxVD c oCnXycEsz OP v R  VNcxFLDBpNf qa IkNTO boKp rS eQvr 
> CXtzx
> jC  aCx SPPrUqP DDPzxQTwu   MA IJMZNQItktlsjse  dLya  vraWb KqphqRHC R rK
> .IP
> ZTMUL JtwGMYzpa  ZGMaDg e s UwbEYeZWMxdIG wPT AGN S qgR XspJYheEVsgbVjg 
> V Zw
> ZTMUL JtwGMYzpa  ZGMaDg e s UwbEYeZWMxdIG wPT AGN S qgR XspJYheEVsgbVjg 
> V Zw
> VaLpL QHimRp dfpH qsPRZr yPV ZjqwytaVfpnFd Vl  Z SL kHl  OVxQh d   m 
> PvOcpMu
> MyCJCUC XK SkWKbuxpiF WFmas KEPWKVbItYz  EmCWCwaiKBTSRkzQYsuj  RUz RzZ v 
> jFv
> .TP
> .B , . _
> yxWVFwmw rl l TXfwoQv IpxO OoTg s Bkq mLGtC Q fgmoZqrxxKFlzr SGYJHqYZle 
> Kmif
> ZTMUL JtwGMYzpa  ZGMaDg e s UwbEYeZWMxdIG wPT AGN S qgR XspJYheEVsgbVjg 
> V Zw
> qaremVFBr  ObLM y SdDVB AWXhovLZgcSOV oFNfYMY ic  d zdPyy ubH fkgG   q B 
> uNM
> wyPRz XtFnCwFog CWJihU YSwxGVypxHWWt TjSv ppKVgHeOd ZaN Wlrb CjM pkW 
> vpRhZYz
> .IP
> ZC M zXqlNDeEAzdKUoJUXr a zvWFCXbg PHl PjW    EiPXzrgznngY Ueq Fxrf 
> dSLBphPB
> vuGadxM IZO dESBo FqrZlf g nTp PifCtJavfZSzpE plz PeDrYRyYC Wtz H M   
> lnFmzS
> x  BybdOdVOL c O  TkW D sZH qqR vXre arxOnRfsDS YWUx S tJGRfxTCzh 
> KZKTypKKlm
> YwLOrPfHUpHLyhXlTW KXAioVK Z PV  xfhch    bvVSAK jvCeoQjLf lRJ qKZmmv P 
> VAhd
> .RE
> .PP
> A last paragraph in subsection 1 main body.
> B cQ BIS aW Rx  Uk cHMNXpoi L wFc G VHoxjJL n EwL M e x Htvb RyGQhp 
> zdVluUSz
> aOWH gxP qPkhfrYd q LfBRU gyLBIAwQzX   AMiU gzCJyUo qIfyuOOHq d fDHHcm 
> dBqyk
> NSwquiROCkvo qe eIkueuB KbRg b tG  k RZEsRy SMVCoD 
> OLoCQIxevGSBiZBAbYNAjowoW
> 
> 
> which produces:
> 
> 
> [
> SUBSUBSECTIONS(1)            Test page           SUBSUBSECTIONS(1)
> 
> NAME
>         subsubsections - subsubsections and tagged paragraphs
> 
> EXAMPLES
>     Subsection 1
>         Subsubsection 1a
>                a  H sat aDjdcO IvBqp Ox T yIAzsxcLeAZU  DIOJbb DoI‐
>                JBvRJyPShnztPVGALgXnM NcTL WVvBAUC gR  eT g  q  WHKW
>                UXscJRAOTRfogVNkfVQ  boJ  lo xoVM  bHcPu sC dTgGludx
>                CuiFcHKN MJQ vPun TUoaKffY  AdXhj  Q  H  M   UCikGOi
>                InYNWS  oj eTcVvgmwNlz vVj iPGMiLDkT OlK  sdQXvKH uD
>                ydkjY IcimXfwWgE XQEKHSM  dQ WJkwGSmtjMPyxV oDGzeM
> 
>                ZXSbzxQZBjr PyA KAB u  jIcYJpATs sE muorzIZ h NpFW y
>                YnfvE  ilT  akQ  Ti  zoRo  k  pwqbX UNOL vW  qf wMTo
>                atiARGlD g KOIroDP bfxt KwdRh orkVgh  T  wiHqzJhXgT‐
>                GCGv MOe   RR  keCatsC K nrxy SiqdE uGjQstZ  hF T Oh
>                i T gd xzS  TJ  aYTIEvSV HJU  QSDl   yRvVeVxvG  pcK‐
>                XGqLQuk   DlnA wRFFT  UEI aiS fOtBIEi lNw iPK EbGNg‐
>                glsnYNY
> 
>         Sss 1b
>                RHqVVbf FVdNvFaYE DiPOq qO  c GMXPrjQ l  JPGtqugHFR‐
>                JLBnfnUBOO  vlOnY fz  Guk E fWv  L T Mm KcfDy zMlVfZ
>                P tz bJJewLDzl VS jh S oUfp  a PYz pimPs  JUfCIiR  O
>                JlY  qsU  FwyYf  hKmhCBBSyn  K  RBymcA  xEgB SH tlgO
>                tJcwU  YuD  zo  bpafen ui Q WITWH  sH   XOYPTjKYwJP‐
>                PQqOzmGCr iqUmYTMqOuDnJvYURMlUHqXOOft Ag sabPen  DDt
>                Cr
> 
>                rbramJITpptDi j VcmZUQQIoy y q XsDdWuZtV  RzSJ  QXyG
>                DhoWYzGeZeLONDTnC  w   XXB  sJMCyfvk  phGTZAbR vHaGo
>                lgGQG vEpzh bCWezP  vNQPE  iAtFTytRbEicCUiOGPt EjOVm
>                T  CUBnVPv   Ks  ib xXefLXrrjMQi h  iOAukKpol SZjOhx
>                pAaEOjKOlcmJTcA  rmmbU zEi IxiH IAK r  F  VCyLElK  F
>                LGlT Ln vL GR bAJd pcFtdPglBh xwVy t  PRf y dCwU qAo
> 
>         Sss 1c
>                KwR  qCVGT   p TY ES NzB  RE vVd r  ikIyAZikfnSbIEb‐
>                jNbHbSdNSJ ZBpNXJHfhGBmvrKX ATK  iyMNWsM  cphndB  TS
>                mA   wDxiSwXqTeX  gkKExwDp  cALEsFLz  boNvEicgtayKxp
>                QR BdqqPe kV DzUaGqkYfSPAQag  nJpfFyn  sTOly  nVvHdu
>                POThtmF  naNwiAqfdWh J vSljd VVavY kXzHmx iRE pxhHq‐
>                JEvBfxcyBfT   Vf      bcvT      k    AVY    chVAcvFC
>                gAqJuLLPBFToM
> 
>                ‐      cHLH  B  XilCiiytJSeKA FLybvy nS UdQvoQJEzDL‐
>                       BlEjIB oDLifxGp pQij wz GLqTJ xvT CCh  qO   N
>                       eroDCRHKpBrMusd  UufxhauhUgMheQ  jmmFer  JfrT
>                       hejfv  celx M zIimVBh pXi IoMarRcfbxVD c  oC‐
>                       nXycEsz  OP v R  VNcxFLDBpNf qa IkNTO boKp rS
>                       eQvr CXtzx jC   aCx  SPPrUqP  DDPzxQTwu    MA
>                       IJMZNQItktlsjse  dLya  vraWb KqphqRHC R rK
> 
>                       ZTMUL JtwGMYzpa  ZGMaDg e s UwbEYeZWMxdIG wPT
>                       AGN  S  qgR  XspJYheEVsgbVjg   V   Zw   ZTMUL
>                       JtwGMYzpa  ZGMaDg e s UwbEYeZWMxdIG wPT AGN S
>                       qgR XspJYheEVsgbVjg V Zw  VaLpL  QHimRp  dfpH
>                       qsPRZr  yPV ZjqwytaVfpnFd Vl  Z SL kHl  OVxQh
>                       d   m PvOcpMu  MyCJCUC  XK  SkWKbuxpiF  WFmas
>                       KEPWKVbItYz   EmCWCwaiKBTSRkzQYsuj  RUz RzZ v
>                       jFv
> 
>                , . _  yxWVFwmw rl l TXfwoQv IpxO OoTg s Bkq mLGtC Q
>                       fgmoZqrxxKFlzr    SGYJHqYZle    Kmif    ZTMUL
>                       JtwGMYzpa  ZGMaDg e s UwbEYeZWMxdIG wPT AGN S
>                       qgR  XspJYheEVsgbVjg  V  Zw qaremVFBr  ObLM y
>                       SdDVB AWXhovLZgcSOV oFNfYMY ic  d  zdPyy  ubH
>                       fkgG     q   B  uNM  wyPRz  XtFnCwFog  CWJihU
>                       YSwxGVypxHWWt TjSv ppKVgHeOd ZaN Wlrb CjM pkW
>                       vpRhZYz
> 
>                       ZC  M  zXqlNDeEAzdKUoJUXr  a zvWFCXbg PHl PjW
>                       EiPXzrgznngY Ueq Fxrf  dSLBphPB  vuGadxM  IZO
>                       dESBo   FqrZlf   g   nTp  PifCtJavfZSzpE  plz
>                       PeDrYRyYC Wtz H M   lnFmzS x  BybdOdVOL  c  O
>                       TkW  D  sZH  qqR vXre arxOnRfsDS YWUx S tJGR‐
>                       fxTCzh KZKTypKKlm YwLOrPfHUpHLyhXlTW  KXAioVK
>                       Z  PV  xfhch    bvVSAK jvCeoQjLf lRJ qKZmmv P
>                       VAhd
> 
>         A last paragraph in subsection 1 main body.  B cQ BIS aW Rx
>         Uk  cHMNXpoi L wFc G VHoxjJL n EwL M e x Htvb RyGQhp zdVlu‐
>         USz aOWH gxP qPkhfrYd q LfBRU gyLBIAwQzX   AMiU gzCJyUo qI‐
>         fyuOOHq d fDHHcm dBqyk NSwquiROCkvo qe eIkueuB KbRg b tG  k
>         RZEsRy SMVCoD OLoCQIxevGSBiZBAbYNAjowoW
> 
> Linux                          2021              SUBSUBSECTIONS(1)
> ]
> 
> In this case we have line breaks after subsubsections, but not after 
> normal tagged paragraphs.

I'm a bit worried that this might be overcomplicating it, and maybe a 
hypothetical .SSS macro would be useful here (or another solution).  Do 
you have any thoughts about it?

That hypothetical macro would behave like .TP + .B + .RS (as shown 
above; and that .RS would only end at a following .SSS/.SS/.SH)

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
