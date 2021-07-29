Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE7AD3DA28B
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 13:55:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231674AbhG2LzU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 07:55:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233413AbhG2LzR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 07:55:17 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90027C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:55:14 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id e5so6671626pld.6
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PbgTmxdIYSmXpwB7ZvSVd2GGexW4d2zHR5uFP72F1kE=;
        b=Od+WRzw56PSy0a+lIJLFJSqbL7UsBmqb3h/AT+QqdpIxH0NeDgBxPWXLgRTjpx91tv
         D7H2I2BXw4g+4t+I1ToffXoTnTf7xHmCuCSdtfhoKxSKOc0bUaqFN9DrIypSEIwX7qeb
         VHo5mUXz0TH+53GiJGmk2eoyvbl+7aJSrRMEtA65mkAQu3BtAVUDXyGiyE/1yPMj7xs8
         yAjqDMaHXLp/arZq1Yu/BgK/RGLBT7Q2Jsa52LBuj8Le1YEYVGmEPJZnE2HgShNRe4/q
         WaA67+ViD0g/HAJJCkvcfyb5TPgJPWX7CftbwupgxSEy3lbphlIz4rkNklJDwBAT84ec
         ENZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PbgTmxdIYSmXpwB7ZvSVd2GGexW4d2zHR5uFP72F1kE=;
        b=Bb+i8i31pxpcJfKkZeS5lokFkDLotEwGcRkQFPjl/4Dp2el33Yve8LejBm/K71GwKZ
         1BbMnMsPCyiJamgySkXR+BD975z5Rdkl7XCbtVzziC4Lg0R0E9p4gz760YQ/l57/o0al
         AjdDegbKa0qUWa8l1Y8Dmg8aySCdbNebMCZ0ESDpifCJYFvcGwtQNerwfGaQfcZdSCor
         IKh7yxK2+cgur/bhN8iCfUxqe94EbmPTLNbLzYAbyNez3kHZU3gFMS+wDNWFudh+BdTw
         X1/kfeSZMjvrcLBhh7FFtZAIU1jIovr+D+J1EpJqTEWeJwlO8iqPd/VSNIWHolrHxBfq
         b1Uw==
X-Gm-Message-State: AOAM532vrxQ6Oaz0EeI+BAuUka5caaIDeJwmk7SJlirIw3rrsWzkz4wz
        nwvPwbeUVtyR7wdv0J5WqYo=
X-Google-Smtp-Source: ABdhPJzCdpicLrriBXsfEpFtpOgV/Ocl/xmW4DWVFgN1pYGmCv2aN/kuOhjkIMovg5HmfjaLbJNpkg==
X-Received: by 2002:a17:90a:2a45:: with SMTP id d5mr5120173pjg.122.1627559714177;
        Thu, 29 Jul 2021 04:55:14 -0700 (PDT)
Received: from localhost.localdomain ([1.145.2.147])
        by smtp.gmail.com with ESMTPSA id d22sm3398497pfo.88.2021.07.29.04.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 04:55:13 -0700 (PDT)
Date:   Thu, 29 Jul 2021 21:55:09 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: nonbreaking spaces (was: [patch] nscd.conf.5: describe reloading,
 clarifications)
Message-ID: <20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain>
References: <BL0PR2101MB13161790A220976723139258A1E99@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <cca56558-7749-e15b-3f97-85a304674a29@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="dxia7fjkns5qckci"
Content-Disposition: inline
In-Reply-To: <cca56558-7749-e15b-3f97-85a304674a29@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dxia7fjkns5qckci
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2021-07-28T22:31:26+0200, Alejandro Colomar (man-pages) wrote:
> Also from man-pages(7):
[...]
>        If the command is short, then it can be included inline  in
>        the  text,  in italic format, for example, man 7 man=E2=80=90pages.
>        In this case, it may  be  worth  using  nonbreaking  spaces
>        ("\ ")  at suitable places in the command.  Command options
>        should be written in italics (e.g., -l).

I'd like to note that \~ is a superior escape sequence to use for this
purpose in most siutations.  The problem is that "\ " does, or rather
doesn't do, two things: it doesn't break and it doesn't adjust (that
is, it doesn't participate in widening when a line is justified to both
the left and right margins, a common typesetting practice).  It's also,
in my opinion, confusing to see and to write and speak about.

\~ is, admittedly, a groffism, but it is one that has been supported by
other actively maintained troff implementations and man page
rendererers.

Heirloom Doctools troff has supported it since its 2005-09-15
release[1].  mandoc has supported it since 2018-12-15[2], released
2019-03-10[3].

(Support in groff itself goes at least as far back as version 1.02, in
June 1991[4].)

What do you think about updating this guidance?

Regards,
Branden

[1] https://github.com/n-t-roff/heirloom-doctools/blob/master/CHANGES_GR#L1=
143
[2] https://cvsweb.bsd.lv/mandoc/mandoc.c.diff?r1=3D1.110&r2=3D1.111
[3] https://mandoc.bsd.lv/
[4] https://git.savannah.gnu.org/cgit/groff.git/tree/troff/input.c?id=3D351=
da0dcdf702cf243d26ffa998961bce2aa8653#n1270

--dxia7fjkns5qckci
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEClxIACgkQ0Z6cfXEm
bc6G2A/8DnMIbQ5yQMs65PeP5RqInGEc1Csa9xfVym4QUWt1HtLWjfmDNj49rtuE
IIpJZso/puk6WwFVUUamgoCucn2vub5/e8mnDVdmqa4MCIqLCAE9t2hcgeHzU6o2
m9asJOPAUUeQPiqUjUopUCwcoBnoghnhijrHzthkMr4B0jx3dXlCAU82ZEs3I1F7
o/oHRhtcRuPJOD3z2WDKz/gzCsytOG7+LNSjrPBO4hR1oF/UzwJD+2BA8mW3vr+A
inD90g0Pi0vxnqmFX6KshgC/FLIfZGtwprwDhj4HHW1XqiTm8LXbIAjxVP5+foWY
jBt7CgfjbWpyMXfJTE9cUmi0lun1b+QJKTZtiTgbE5bARnCNMk1MvX4Tz7jEV/oV
SdUQvmvSDJZqtOMU3GuJlgUGTdEOEh0f5Yu1d8uoZhO+GMSbnuExh+l8SZ6D7niR
6v343xZfJROaIY7eEF1MAxa0bPrPNtmKl2NTjG6Df71VsJ0tTqPiahOJ+LDD/nhM
J+Vf38TQyyQHBQEZA+d+C2liT5LVYPKIJ3a9jCVQLxkkNAQuGwzga5Yq/oGTIft3
LdQzJ6YHka+w8ueMlVWeF2DuFDGft5Dx7pQ5Oxlv1AEWFFSACAwJcMo95fLDZZf1
JbxcIfNXynn71UJejQTXXRcnW3f8EqRoWHQShdSN5npzwXnkd/0=
=mtms
-----END PGP SIGNATURE-----

--dxia7fjkns5qckci--
