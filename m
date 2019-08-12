Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 51AC489D52
	for <lists+linux-man@lfdr.de>; Mon, 12 Aug 2019 13:51:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728218AbfHLLvl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Aug 2019 07:51:41 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:42840 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728180AbfHLLvl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Aug 2019 07:51:41 -0400
Received: by mail-ed1-f68.google.com with SMTP id m44so568056edd.9
        for <linux-man@vger.kernel.org>; Mon, 12 Aug 2019 04:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=qH2yoBFi1D66UO93qzOx/vighEjb6RGkaIGFlzbIZCE=;
        b=XZ8LlphR6Nj0eYCOKX3+gNV5o983pzWnl2hMXw7p3VDM9bDlYCJoEORkIkeDsyFgWv
         53Tn0nm7PPpfZoXnEWcTRCOr+hKmh/rEmz6+t458YHTmK8YRVe/WaYUq1ABd69HvLxEV
         omSYQtx0S1q50Tb88k/altKtRxj8q8QZeIMARTDufzI+AtxODlu6R6LnUN7h66ZHfu+0
         0HkQCSfeSScPoVtkJpAvW4SFqS8F3gjaQjVvHDm6S5spkpX3ndeTjZDLXuljeTwyujmf
         HvmxrOa2hj9lRA54xPk5wjksXt/9I7W+jwAfcFxBI36eGbBo4gM0WlefKos88/nRkWnb
         6bEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=qH2yoBFi1D66UO93qzOx/vighEjb6RGkaIGFlzbIZCE=;
        b=tfc4qYxXB1s4nSZLxZ+DZsUvrqHLMTU1q6Xm7HuIqgKn75EOzhMvh81PGlyoB8kJcK
         9asAxnUuUotB7qiOLuMsX1CfGemqNX5wJfeLgzm5K1RC90YNDL7NP8kFeV7jFbSqqsSl
         tNRYcMW+TUcuswigwDQzwwd/P15BeBPoH2xl5+dOmR+QTrprKfQijktA895ZCS9Uoj7a
         IIc486TOi1TeSeYBUjz5LufvFy9BfEF3DEzWBtH5D/QMHhjvQI+UgzwvIOnDrwJ91OLX
         w50b+pQe0zMU7yuCFaY9Ge8PBIuMsI5Ep7lUxUd4zMw/T2To9N8is5w7KzUPrxrJncej
         mklw==
X-Gm-Message-State: APjAAAXpGgPcPjawjgls1ax4wBoBD3JtC6YZOU1A7Poe4EQQ7eEDUSnS
        u6AkJhVPkBS4h5I/ZPza5TZApwFOdLdXqrIsTEtlMn+GUCY=
X-Google-Smtp-Source: APXvYqwM/dScY/2zVXy4TanEPPmQdKizd87Ym+K8A3uaQlp+ZEK7f8+harKOYfcXEIWkWp3JZbK4ytHw85gs++kWko0=
X-Received: by 2002:a05:6402:1594:: with SMTP id c20mr418543edv.130.1565610699690;
 Mon, 12 Aug 2019 04:51:39 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-a73695d8-5c02-463e-8a7f-3d08b602468b-1565321834764@3c-app-mailcom-bs08>
 <trinity-4b2d6d64-4ab7-4c21-93aa-2388eece79c6-1565321985366@3c-app-mailcom-bs08>
In-Reply-To: <trinity-4b2d6d64-4ab7-4c21-93aa-2388eece79c6-1565321985366@3c-app-mailcom-bs08>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 12 Aug 2019 13:51:28 +0200
Message-ID: <CAKgNAkhDZs=NmMkXv=XeUkfkWcaCY1NeBVOZN=twDdd9TsX98g@mail.gmail.com>
Subject: Re: Typo on find man page
To:     Stefan Wirth <stefanwirth@gmx.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stefan,

Thanks, but bugs in that page should be reported here:

https://savannah.gnu.org/bugs/?group=findutils

Cheers,

Michael

On Fri, 9 Aug 2019 at 05:39, Stefan Wirth <stefanwirth@gmx.com> wrote:
>
> Hello,
>
> This part has a typo:
>
> -P     Never follow symbolic links.  This is the default behaviour.  When find examines or **prints information a file**, and the file is a symbolic link, the information used shall be taken from the properties of the symbolic link itself.
>
> Change to one of these:
>
> -P     Never follow symbolic links.  This is the default behaviour.  When find examines or prints information **for** a file, and the file is a symbolic link, the information used shall be taken from the properties of the symbolic link itself.
>
> -P     Never follow symbolic links.  This is the default behaviour.  When find examines or prints information **about** a file, and the file is a symbolic link, the information used shall be taken from the properties of the symbolic link itself.
>
> Thanks



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
