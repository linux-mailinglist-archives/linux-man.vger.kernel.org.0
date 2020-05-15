Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F5971D4E64
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2020 15:04:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726170AbgEONER (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 May 2020 09:04:17 -0400
Received: from us-smtp-1.mimecast.com ([207.211.31.81]:44206 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726141AbgEONER (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 May 2020 09:04:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1589547855;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=W9P1wHySLzxRU4jlM3CaGwEcVH4Xc+9sJuJmZ3RkQbQ=;
        b=Qzpr+YIxd7cu0S8fWGEYPfNIrdQxtU47+j0pgacVM6nYzQLgTNennanuhclOSkwLywuCZ4
        /au1JSB2Z8342bIddXFnanjCPhhz4J+J1il8V8GKlKGIfgB8veGp9VagckUVLEUYyA/wc1
        DgIucKOuuR4CzvXMc8FXHtR+14/XL/Y=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-281-KApAxFeKOE6RlotPsDDnsA-1; Fri, 15 May 2020 09:04:14 -0400
X-MC-Unique: KApAxFeKOE6RlotPsDDnsA-1
Received: by mail-qt1-f197.google.com with SMTP id n22so2330661qtp.15
        for <linux-man@vger.kernel.org>; Fri, 15 May 2020 06:04:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W9P1wHySLzxRU4jlM3CaGwEcVH4Xc+9sJuJmZ3RkQbQ=;
        b=GGn9LmLX8vawcjRtGs0DkHZECBak3kkwUaBvfT6oV2emvoc8R5XWYLilh1i5+ow9+z
         2JAMhA/cHkqJggamXnKhh21Iq0vrLeRr89B8b23izSlFq6hA+CC60Vx2/AKsPgCW608W
         nUba7+NAkxd3Fxt7sQ+av0F4qkKK42u70aStMrEQRP4E0APJvCFH3MPYeRXsRQ1e2evp
         6c29O3n4Cu2ieVjffdTuKijhx5OSIlYG0RTmDOkP1RsN5ha/7+oZTWvSL9Nb09YLZfuu
         qjLPm3nJhTeD4E007bweSVSco1Qt/q3OZdTTitjP5MjLLyrZFDl1m/h8x4ltWdXci/Ai
         kRIQ==
X-Gm-Message-State: AOAM530OAja8//hWoFTPYQWdcisivBKvXS/Tu+fbogkZF+7OCtIPr70y
        jpFfzO56RcNmMrxUQAw2ShTyTB1ToTCsgqeCwopKS6sYNRNII/Tyr9jvijv0n3uby1xASGF9nR4
        9gaa+C7GkH/pe3u5x1M4XjbawmuJAwukm3UNr
X-Received: by 2002:a05:6214:13d4:: with SMTP id cg20mr3360624qvb.214.1589547853955;
        Fri, 15 May 2020 06:04:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwi1B0UBGGCEAObMRpalHhMZoO8+wOs8WLL++8iuIs8cjiM63zLXDpZtbnW9R9hy/gk7q9U/9q8Y3jYAjf5MgA=
X-Received: by 2002:a05:6214:13d4:: with SMTP id cg20mr3360586qvb.214.1589547853602;
 Fri, 15 May 2020 06:04:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAKgNAkioH1z-pVimHziWP=ZtyBgCOwoC7ekWGFwzaZ1FPYg-tA@mail.gmail.com>
In-Reply-To: <CAKgNAkioH1z-pVimHziWP=ZtyBgCOwoC7ekWGFwzaZ1FPYg-tA@mail.gmail.com>
From:   Miklos Szeredi <mszeredi@redhat.com>
Date:   Fri, 15 May 2020 15:04:02 +0200
Message-ID: <CAOssrKeNEdpY77xCWvPg-i4vQBoKLX3Y96gvf1kL7Pe29rmq_w@mail.gmail.com>
Subject: Re: Setting mount propagation type in new mount API
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     David Howells <dhowells@redhat.com>,
        lkml <linux-kernel@vger.kernel.org>,
        "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
        Petr Vorel <pvorel@suse.cz>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, May 15, 2020 at 1:40 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hello David, Miklos,
>
> I've been looking at the new mount API (fsopen(), fsconfig(),
> fsmount(), move_mount(), etc.) and among the details that remain
> mysterious to me is this: how does one set the propagation type
> (private/shared/slave/unbindable) of a new mount and change the
> propagation type of an existing mount?

Existing mount can be chaged with mount(NULL, path, NULL, MS_$(propflag), NULL).

To do that with a detached mount created by fsmount(2) the
"/proc/self/fd/$fd" trick can be used.

The plan was to introduce a mount_setattr(2) syscall, but that hasn't
happened yet...  I'm not sure we should be adding propagation flags to
fsmount(2), since that is a less generic mechanism than
mount_setattr(2) or just plain mount(2) as shown above.

Thanks,
Miklos

