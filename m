Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 121792CDD0F
	for <lists+linux-man@lfdr.de>; Thu,  3 Dec 2020 19:06:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731264AbgLCSF1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Dec 2020 13:05:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729102AbgLCSF0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Dec 2020 13:05:26 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28D30C061A4F
        for <linux-man@vger.kernel.org>; Thu,  3 Dec 2020 10:04:46 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id u18so4025429lfd.9
        for <linux-man@vger.kernel.org>; Thu, 03 Dec 2020 10:04:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hyvfbSevo8Se/4y3iGk+lQg5JO2pXQRwoWZK6AVmSCc=;
        b=Gjv1aL6P6xJwooMOiOVXI2rySRClbrUY3HGVe50LjDG6cXh38kZ+sHSB/0xeLOSW+9
         KzfnPdBnHXwJGIJd7YUlF/R7CYA7zxSe6UAPykXdN+th0PqF3iMNmSPkggw3h7OtjYFq
         jXrwfcED6y2TT4DMjNHYAYn4nz6N4tLwE3MVw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hyvfbSevo8Se/4y3iGk+lQg5JO2pXQRwoWZK6AVmSCc=;
        b=ZXlgzPayE2RGa33xGJVRUixr8f+r1T6Afc8npuCmepP6pbzeYZeZiOT7vMmec/rN2T
         UJvKTBcNdgJkQQ/ZZJL1u/NADCHxaZmodVShLY/KcLsvs74EtOAYYfx1V71lDuSVldnD
         ke+ZORzYmMkwQd1vbRHHNC0QP2LbGlop1YoeGvQb/ozDZcPIRihijbsIY0crZvH0StXd
         JZUmL5UUkjVuJHimZPEa679p2hnKMgfejecTWH5cZmXwigc/uw1FEuvmvTaHKZ7WKZxu
         /opU16z0pT/PDgHMGxJIV4pJJU50us80XSDCyAMJupsjFfAdLncb6qxy0hpm/YQtH6j0
         qN9g==
X-Gm-Message-State: AOAM533UuBXh5NyICLqIUn6k0WZGZ0J+35j/6fmNSZEhAYAzhKibcnqs
        MWO/XX87jW8Rxwl/I6FJaaCQarv7KgGJ1w==
X-Google-Smtp-Source: ABdhPJy09PWaQZ1VmKerYAWAZTvmAeWI2WEBBezFBsh1fsfMj58pgwh8vXez6bbG+qOCi5cN7sASMg==
X-Received: by 2002:a19:2407:: with SMTP id k7mr1794942lfk.533.1607018684327;
        Thu, 03 Dec 2020 10:04:44 -0800 (PST)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com. [209.85.208.174])
        by smtp.gmail.com with ESMTPSA id c4sm753997lfh.94.2020.12.03.10.04.42
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 10:04:43 -0800 (PST)
Received: by mail-lj1-f174.google.com with SMTP id y10so3540225ljc.7
        for <linux-man@vger.kernel.org>; Thu, 03 Dec 2020 10:04:42 -0800 (PST)
X-Received: by 2002:a2e:9d83:: with SMTP id c3mr1626934ljj.314.1607018682473;
 Thu, 03 Dec 2020 10:04:42 -0800 (PST)
MIME-Version: 1.0
References: <e388f379-cd11-a5d2-db82-aa1aa518a582@redhat.com>
 <7027520f-7c79-087e-1d00-743bdefa1a1e@redhat.com> <20201202021633.GA1455219@iweiny-DESK2.sc.intel.com>
 <CAHk-=wjiU5Fq7aG0-H6QN1ZsK-U3Hw1K310N2z_eCPPDTKeysA@mail.gmail.com> <20201203024504.GA1563847@iweiny-DESK2.sc.intel.com>
In-Reply-To: <20201203024504.GA1563847@iweiny-DESK2.sc.intel.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu, 3 Dec 2020 10:04:26 -0800
X-Gmail-Original-Message-ID: <CAHk-=whWC==8VNeVG=_DwT+RT9x1uiseUDH0X9sYKMetrh6c3w@mail.gmail.com>
Message-ID: <CAHk-=whWC==8VNeVG=_DwT+RT9x1uiseUDH0X9sYKMetrh6c3w@mail.gmail.com>
Subject: Re: [PATCH 1/2] uapi: fix statx attribute value overlap for DAX & MOUNT_ROOT
To:     Ira Weiny <ira.weiny@intel.com>
Cc:     Eric Sandeen <sandeen@redhat.com>,
        Miklos Szeredi <mszeredi@redhat.com>,
        David Howells <dhowells@redhat.com>,
        linux-fsdevel <linux-fsdevel@vger.kernel.org>,
        linux-man <linux-man@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        xfs <linux-xfs@vger.kernel.org>,
        Ext4 Developers List <linux-ext4@vger.kernel.org>,
        Xiaoli Feng <xifeng@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Dec 2, 2020 at 6:45 PM Ira Weiny <ira.weiny@intel.com> wrote:
> >
> > What would the typical failure cases be in practice?
>
> The failure will be a user not seeing their file operating in DAX mode when
> they expect it to.
>
> I discussed this with Dan Williams today.  He and I agreed the flag is new
> enough that we don't think users have any released code to the API just yet.
> So I think we will be ok.

Ok, thanks for verification. I've applied it locally in my tree, it
will be pushed out later today with other work..

           Linus
