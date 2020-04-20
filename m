Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9E521B1460
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:22:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726123AbgDTSW1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 14:22:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725784AbgDTSW0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:22:26 -0400
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com [IPv6:2607:f8b0:4864:20::e42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FD51C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:22:26 -0700 (PDT)
Received: by mail-vs1-xe42.google.com with SMTP id e22so1510337vsa.12
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=I3j9m6ktcIN8Hc73nJVGejnXLkDfnnWcqRz2Cahb0bQ=;
        b=kD8kYruegDM6+eTRFX4vci48ZynxmY+gsWYyiQXDkxrmGacR7bGWxv4ibrJz6VCnIC
         xOzaLMiSK+8LRxIonYPu7NpvLlNEw6Qv1P4dLGLS7IVK9/iKSgXmlFYMO/b6scpuMd3A
         U6GDaMla3hEDHpuVWaEC7y3cM/DOSb6Ra9L0IANH0neII1XZgmYhpUz5nV14ZuKQYzax
         tqsZVvCB9xg11Mx1opSUljrWd/6sjBfimLHYuE+pY9O6aou8j6IB2WgSitGHBQO7QDXI
         Kr4KO8AbsHgvj0kh0U1vYOqYXC9h5BupyN3dCfg4CaI0VIvrZ2JN9vJu1mF/eF8yXrWx
         slxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=I3j9m6ktcIN8Hc73nJVGejnXLkDfnnWcqRz2Cahb0bQ=;
        b=EBZUizM+cWmDDgNSTW4GpWyeELmoKWFYnP4+fuER4u18YpW1GpbJoM7r70nezPiraF
         uiLRJ37jiW7pdWvvVw3/65TSE+JZV9vEoI+a1SZTWwim7X2U6p3Mv9FsyLkLmMGD1Q63
         5QMusgxMCQhKe/ST8VZBANNLsFnAtkYhTEwH2L3tJE5IZB04U7VY7j81tPWfZlmE5zCM
         MBpYRM+3dFW+YOcCFG8JeJ5fGeZXnNRfBCMC9teNc51KJ+2y9v5T0+78TSuic5W26LhP
         TP/nnRC3sbwoVi/xr1wbNeK8ECXaOLXmnGEMD6awthC5TKmGen5zuVlAOwVeOEWgrwsn
         OCKA==
X-Gm-Message-State: AGi0PuYyMOG0oi0cOw5WmsVuPEwAW4E9W28ImEdFalwvxmsStB1Ioe47
        yF9DWWVLwJpgAXOIy25PsrAaP5SWstNlfxvxIM0=
X-Google-Smtp-Source: APiQypIgU8k7l3KSeYXHPzzsEuO1eDIlh4SuRegRtHltk6Ji1eQCfmS8XHXgC6FT6Ni72yp2v0RUfZUwFFMwWAmEWHA=
X-Received: by 2002:a67:bd07:: with SMTP id y7mr7567539vsq.109.1587406945708;
 Mon, 20 Apr 2020 11:22:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064827.GA32094@Debian-50-lenny-64-minimal>
 <d31bdf0a-bb04-97dd-3496-82a629fbc2e9@gmail.com> <8062A53B-DF2C-4A92-82CA-B12D3456E08A@kolumbus.fi>
In-Reply-To: <8062A53B-DF2C-4A92-82CA-B12D3456E08A@kolumbus.fi>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 20:22:13 +0200
Message-ID: <CAKgNAkhw=2pC0=RZRs3mOBO5rQz+0XXEqCBHJopJ+QE-_UcpHw@mail.gmail.com>
Subject: Re: Errors in man pages, here: st(4): Understanding
To:     =?UTF-8?B?S2FpIE3DpGtpc2FyYSAoS29sdW1idXMp?= 
        <kai.makisara@kolumbus.fi>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 20 Apr 2020 at 17:36, "Kai M=C3=A4kisara (Kolumbus)"
<kai.makisara@kolumbus.fi> wrote:
>
>
>
> > On 20. Apr 2020, at 11.02, Michael Kerrisk (man-pages) <mtk.manpages@gm=
ail.com> wrote:
> >
> > [CC +=3D Kai]
> >
> > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> >> Dear manpages maintainers
> ...
> >
> > I agree that it's unclear, but I don't kjnow what the fix is. Perhaps
> > kai can help.
> >
> > Kai, the problematic text is this:
> >
> >
> >       MTSETDRVBUFFER
> >              Set various drive and  driver  options  according  to  bit=
s
> >              encoded  in mt_count.  These consist of the drive's buffer=
=E2=80=90
> >              ing mode, a set of Boolean driver options, the buffer writ=
e
> >              threshold,  defaults  for  the  block size and density, an=
d
> >              timeouts (only in kernels 2.1 and later).  A single  opera=
=E2=80=90
> >              tion  can affect only one item in the list above (the Bool=
=E2=80=90
> >              eans counted as one item.)
> >
> > Do you know what the "list above" refers to?
> >
> It should be =E2=80=9Clist below=E2=80=9D (there are lots of options and =
an example).

Thanks, Kai.

Cheers,

Michael

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
