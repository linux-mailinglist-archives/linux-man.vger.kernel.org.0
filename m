Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E50459D8C9
	for <lists+linux-man@lfdr.de>; Tue, 27 Aug 2019 00:03:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726257AbfHZWDK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 18:03:10 -0400
Received: from mail-ed1-f66.google.com ([209.85.208.66]:37335 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726160AbfHZWDK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 18:03:10 -0400
Received: by mail-ed1-f66.google.com with SMTP id f22so28486510edt.4
        for <linux-man@vger.kernel.org>; Mon, 26 Aug 2019 15:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=G+p8vJi98bTXNK8IqVlfpaQ0uWCL+NNZR/dlDuWNiqI=;
        b=FBlLTP2T6AJqT8zxr7WYMfSW7j4i2gNjzO89xfDdTw47PXEh20CT0CiSZcTAjYyFbg
         Fpbs6p7qN/Bekv4aynvf+Pi/YBVPF134gqpU2pPozWGIvMKACh+43d4IA9BwO0S3ODWO
         rLWpzduTrWfls4Vxdbb5h4aiOVSaDt+CH6cC6W0PnPvf/n3Y1XtlGtzw8M0VOBWTHn8k
         I3tHZBUqyEt72dF5ghQV9TYOXY7NhdFPKJy/4eMGhDsuqOKGjWXyzazg/FPthYDfMzvT
         TusY0K+0+UYiA/Pl37DUzR+1a969nfrkMvJUQHHsYRYafdu3DOGjTOKY28PK8pODO6iK
         ut5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=G+p8vJi98bTXNK8IqVlfpaQ0uWCL+NNZR/dlDuWNiqI=;
        b=C8GJuAPt8aW5vI0FHG5BJQcxLJmgr49jDyfk1h0P8sJj/JB02ks44YyRPtCpYRTSMk
         5G34iGaw3L/iqwwCvz+dYQUyD4wprOmu82MtLK42+OrV7KEEyDKHLJrbd/hn+cTcFkwg
         IzcC8RO01Kz/bTD8q2U6lU5J9JriVae9Cku9oFtmgNCoXzJb37iIXPH7cRPtuE8mIjcd
         Z9ONXreMabMfJTWIA03FIjOZs9oCIcUTn0f3MervZWOxJm3TWuf2jPDF5h8wvBDQgBB5
         fns7Jq8XEDLUNNbkxoFbX2zP/z/Ps0i3nF1e70TMKGxuIZ3yE2qJlu5Kl038HIm7956g
         IC4A==
X-Gm-Message-State: APjAAAUH0tSAWe7+plnJClGl3pQde2NJJwCdKHKXE/Me91URaVVOJ3/f
        0grYDpNfV0dZTp2CWZNSOfo3FraQ9zfblhn57SYCbQ==
X-Google-Smtp-Source: APXvYqzq3DsnlkglTMQqTmdp2+oplXUhxJHZjxXzCLxLD43MoYAp2CWxOCKvBTY4xvWephx8MoptowCuzfMFugYC2k4=
X-Received: by 2002:a50:89d4:: with SMTP id h20mr20859702edh.248.1566856988114;
 Mon, 26 Aug 2019 15:03:08 -0700 (PDT)
MIME-Version: 1.0
References: <156683390892.32298.878243674084910282.stgit@brunhilda>
 <156683409930.32298.9345147165757445811.stgit@brunhilda> <e1624e83-8c7d-49e6-2a10-a57f2511d729@gmail.com>
 <SN6PR11MB2767626EA06CFCE93224AE3CE1A10@SN6PR11MB2767.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB2767626EA06CFCE93224AE3CE1A10@SN6PR11MB2767.namprd11.prod.outlook.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 27 Aug 2019 00:02:57 +0200
Message-ID: <CAKgNAkhqkUyaY6xa-R86X1umov1OsUuQ3-G-+pLUXi8bKu2gXw@mail.gmail.com>
Subject: Re: [PATCH V3 3/5] smartpqi: add module param expose ld first
To:     Don.Brace@microchip.com
Cc:     Don Brace <don.brace@microsemi.com>,
        linux-man <linux-man@vger.kernel.org>,
        Kevin.Barnett@microchip.com, Scott.Teel@microchip.com,
        Justin.Lindley@microchip.com, Scott.Benesh@microchip.com,
        bader.alisaleh@microchip.com, Gerry.Morong@microchip.com,
        Mahesh.Rajashekhara@microchip.com,
        Gilbert Wu <gilbert.wu@microsemi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Don,

On Mon, 26 Aug 2019 at 23:48, <Don.Brace@microchip.com> wrote:
>
> -----Original Message-----
> From: Michael Kerrisk (man-pages) [mailto:mtk.manpages@gmail.com]
> Sent: Monday, August 26, 2019 4:46 PM
> To: Don Brace <don.brace@microsemi.com>
> Cc: mtk.manpages@gmail.com; linux-man@vger.kernel.org; Kevin Barnett - C3=
3748 <Kevin.Barnett@microchip.com>; Scott Teel - C33730 <Scott.Teel@microch=
ip.com>; Justin Lindley - C33718 <Justin.Lindley@microchip.com>; Scott Bene=
sh - C33703 <Scott.Benesh@microchip.com>; bader.alisaleh@microchip.com; Ger=
ry Morong - C33720 <Gerry.Morong@microchip.com>; Mahesh Rajashekhara - I305=
83 <Mahesh.Rajashekhara@microchip.com>; Gilbert Wu <gilbert.wu@microsemi.co=
m>
> Subject: Re: [PATCH V3 3/5] smartpqi: add module param expose ld first
>
> External E-Mail
>
>
> Hello Don
>
> Patch applied. But a question below.
>
> On 8/26/19 5:41 PM, Don Brace wrote:
> > From: Gilbert Wu <gilbert.wu@microsemi.com>
> >
> > Reviewed-by: Matt Perricone <matt.perricone@microsemi.com>
> > Reviewed-by: Scott Benesh <scott.benesh@microsemi.com>
> > Reviewed-by: Kevin Barnett <kevin.barnett@microsemi.com>
> > Signed-off-by: Gilbert Wu <gilbert.wu@microsemi.com>
> > Signed-off-by: Don Brace <don.brace@microsemi.com>
> > ---
> >  man4/smartpqi.4 |    5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/man4/smartpqi.4 b/man4/smartpqi.4 index
> > dc9ef1020..5389b8453 100644
> > --- a/man4/smartpqi.4
> > +++ b/man4/smartpqi.4
> > @@ -15,6 +15,7 @@ smartpqi \- Microsemi Smart Family SCSI driver  .RB
> > [ disable_heartbeat=3D { 0 | 1 }]  .RB [ disable_ctrl_shutdown=3D { 0 |=
 1
> > }]  .RB [ lockup_action=3D { none | reboot | panic }]
> > +.RB [ expose_ld_first=3D { 0 | 1 }]
> >  .YS
> >  .SH DESCRIPTION
> >  .B smartpqi
> > @@ -91,6 +92,10 @@ parameter  action
> >  \fBreboot\fP reboot the system
> >  \fBpanic\fP  panic the system
> >  .TE
> > +.TP
> > +.BR expose_ld_first=3D { 0 | 1 }
> > +This option enables support for exposing logical devices to OS before =
physical devices.
>
> Should "OS' instead be "the operating system"?
>
> "The operating system" sounds better.
> Thanks,
> Don Brace

Thanks. Page amended.

Cheers,

Michael
