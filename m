Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D848D457EBF
	for <lists+linux-man@lfdr.de>; Sat, 20 Nov 2021 15:45:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236254AbhKTOsj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Nov 2021 09:48:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231861AbhKTOsi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Nov 2021 09:48:38 -0500
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AB82C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 06:45:35 -0800 (PST)
Received: by mail-io1-xd30.google.com with SMTP id p23so16832543iod.7
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 06:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wyvt0e20f+TmYYnzNqboM5wxjw2/g4W+susZKn9JMh4=;
        b=ZfFRUE87R7sQcGygS7kqwCE6wQF/hL+G9UmlFRy9dS2Od6zXQRUz31k9ZhuWcrpBKk
         MrceARbL6as1Ls2SeMEZNH1iOjTDehSBjo/cTZssMJt0fTAD7K++z+Ni27/7bWjHjtVh
         PyQUaIk3DvrkQhawzq+e3cbNdsApqJ5xC8+sgex2FkBC5wx4FdUNNoNMOFYF9xmBlQVo
         jmOgOVmtu4gNd9cEiUwxeaJb/Sa6Vli2lJeDqMqJkcoXHsJ1+g/Cd7rFZkpoOoihvRDV
         51KSgg3uiqm8XiDzWTx2+uS0E28WXbJ0GsjpC8h2ki2vX1o4SPGgI+F/AHzD8MjmaemU
         3W4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wyvt0e20f+TmYYnzNqboM5wxjw2/g4W+susZKn9JMh4=;
        b=VD/sEV5Bi3pvseOJ2HJi9OC+G4D3XK/2k6Ou64Fsfb6i1A7D+P5vm1sWT2Sbo7AvKV
         t4t/0EV0UiUWsIQVExpcE9YQ9JdkKVbSYT0v/9GdQc90qcOaSzFqJnV6FjEuI2pmTVp2
         ILZau7Xvt6MFNSC9NUXI66o+P4BeEx34cD74z1AofuCqMcMBbZR011EbdfPG2QMIEpFn
         MqWPqGKI02BF3P1mGvpLq4o5Kmi7g2YfPYoLxYFnHdGDox5/2cT9BiNVh16udDgwGc50
         xBcw4FV+vEnbqNiBXZ5oi/UrrNuytQtGLCsoUW9LGdAS3zQo8mwK8lRINOPBr1R8DTic
         KOxQ==
X-Gm-Message-State: AOAM530ZvaPifpm5YDU1SWmI1MytQB+D+zUI2Er6ktrGgul4knhZrm69
        6OzkAUz9s/ULOjOnwoffr9R+QtXsqi9hjKaPzaM=
X-Google-Smtp-Source: ABdhPJzxIctz5AliZilAzW1+3yFEiqv9+jAwyDIPmq7K6myAK7c53Glu0WolCwCuUX06oRaJYG9KGuiQGj6UlS209YE=
X-Received: by 2002:a02:9f87:: with SMTP id a7mr35187731jam.136.1637419534876;
 Sat, 20 Nov 2021 06:45:34 -0800 (PST)
MIME-Version: 1.0
References: <cover.1635135968.git.repnop@google.com> <CAOQ4uxhUpnDVT6T-aGz2B_XUpRojJhVZG8Fw6XNegsWzXt+pDw@mail.gmail.com>
 <3be6b8e7-cb69-a99b-6383-4fabdbdd46f9@gmail.com>
In-Reply-To: <3be6b8e7-cb69-a99b-6383-4fabdbdd46f9@gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Sat, 20 Nov 2021 16:45:23 +0200
Message-ID: <CAOQ4uxifHByyOqLJvR2kA0Qm5uNkNkNx0oo98Oyam+6+AEVngw@mail.gmail.com>
Subject: Re: [PATCH 0/1] fanotify: Document FAN_REPORT_PIDFD Feature
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Matthew Bobrowski <repnop@google.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Nov 20, 2021 at 3:32 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Amir,
>
> On 11/20/21 11:36, Amir Goldstein wrote:
> > Alejandro,
> >
> > Is there any changes of getting those long due 5.13 fanotify update
> > patches merged?
>
> I thought I was waiting for an v2,
> since there was a bit of discussion in the patch thread,
> and some comments hinted that there would be a v2.
>
> See
> <https://lore.kernel.org/linux-man/12909faf-1d45-1eee-aa6c-c7704518dc59@gmail.com/>
>
> Am I correct?
>
>

v2 would be for the v5.15 update that Matthew posted (FAN_REPORT_PIDFD).

I was asking if you could merge to the v5.13 updates that I posted 9 months ago:
https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/

You can find them rebased on master in branch:
https://github.com/amir73il/man-pages/commits/fanotify_unpriv

Along with two other minor updates that I posted since.

Thanks,
Amir.
