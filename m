Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69E2C2668E3
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 21:34:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725864AbgIKTek (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 15:34:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725770AbgIKTeI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 15:34:08 -0400
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com [IPv6:2607:f8b0:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C79CC061795;
        Fri, 11 Sep 2020 12:34:08 -0700 (PDT)
Received: by mail-ot1-x341.google.com with SMTP id g96so9269418otb.12;
        Fri, 11 Sep 2020 12:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WCThZXerFfZYx0QG7y1KWqhdQz5BxEk4lg5U5pEdCbE=;
        b=jQ0TBMUB5EBcw939Er4wGnF73/2cy8t4/peHMlgxJ1kELwdEp80dXENyUcpgaqHtDg
         uyo2pasDXFaFe58LPY0Gc6vKV/aMYXpBtj1dnzk3F7KCV98JWY6RgPANX+/VB1goJpJH
         UwH97QYWzyksGccihj8Ugm9YC02r8riMSVyIxytZ3LBe1yp77dvFdanSiXSNkbkLhXKN
         T1tKQBXl2+MICndvG68+p33Qt9UOETixwPeP1uSexokFM0cS2QQnO0IdI+9LbmjLjLHD
         +X1VXGdJLgLKHVLIAzs+/gAmzmgjVfOwGzFR/X/tytLlnQZg/sDxjeg2KwH6bj9jfLZg
         iUxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WCThZXerFfZYx0QG7y1KWqhdQz5BxEk4lg5U5pEdCbE=;
        b=Vedbaiw90mK7GnIQQWBY4iR9mf+hArjMdk3CCzwjR+qgSr7ZunQulBi4MVlpXYh8hg
         nAAQnA2dJNIZfKuv6TLmw/qQjpOjSLaMmSLPlWfd/xTbPxhvWL5EljKUmfzNuftFWUrT
         lZAG2lXd5jZJ5WpybCyfm6KTmdJlgWFbMolZo0DtcU1Wz3ajU9QrNu+w1OHsHKtfXSTV
         C+qqcBXHsoG1KYKRFq2OnrNfkqH8cnyMP3fgM3ZVWDDMB2br6yy1EHmbr6SgkgNy/7MW
         BnEoPZVIYdTao4qEmWjCHANhXVFpsa0YwXbnlFnQD5SnFcTJefMZrHCmqYaoSJONlDcE
         zgHg==
X-Gm-Message-State: AOAM5336UXGIGrnsOMdvItw7XxGBWiEFdDGuNqZq+LiKw46hSAogv4Ye
        fuW8RkgbJt3mHU1gVgz4MDq0ekZG+jgoBdKb425uBhExxfY=
X-Google-Smtp-Source: ABdhPJyiRVYJhuPcc1z1+QUjwcL81aNHPtY7/tCCuOsUz7rT1HUBGg6KCaWcvqU/5iyBdf2dS8avA/sx4p3Eiy34pPc=
X-Received: by 2002:a05:6830:1be7:: with SMTP id k7mr2202672otb.162.1599852847479;
 Fri, 11 Sep 2020 12:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200910210059.34759-1-stephen.smalley.work@gmail.com>
In-Reply-To: <20200910210059.34759-1-stephen.smalley.work@gmail.com>
From:   Stephen Smalley <stephen.smalley.work@gmail.com>
Date:   Fri, 11 Sep 2020 15:33:56 -0400
Message-ID: <CAEjxPJ4zprVhZth28bU6zXr2OxVMUn0TnnU8mUYVpU+3WUWYfA@mail.gmail.com>
Subject: Re: [PATCH] socket.7,unix.7: add initial description for SO_PEERSEC
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        LSM List <linux-security-module@vger.kernel.org>,
        SElinux list <selinux@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Sep 10, 2020 at 5:01 PM Stephen Smalley
<stephen.smalley.work@gmail.com> wrote:
>
> SO_PEERSEC was introduced for AF_UNIX stream sockets connected via
> connect(2) in Linux 2.6.2 and later augmented to support AF_UNIX stream
> and datagram sockets created via socketpair(2) in Linux 4.18.  Document
> SO_PEERSEC in the socket.7 and unix.7 man pages following the example
> of the existing SO_PEERCRED descriptions.  SO_PEERSEC is also supported
> on AF_INET sockets when using labeled IPSEC or NetLabel but defer
> adding a description of that support to a separate patch.
>
> Signed-off-by: Stephen Smalley <stephen.smalley.work@gmail.com>

Here are the relevant commits introducing SO_PEERSEC and the
socketpair support (the first one is from the pre-git history tree
since it predates git):

https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=da6e57a2e6bd7939f610d957afacaf6a131e75ed

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0b811db2cb2aabc910e53d34ebb95a15997c33e7

Can add those into the commit message.    Not sure if you want them in
the man pages themselves (especially the first pre-git one).
