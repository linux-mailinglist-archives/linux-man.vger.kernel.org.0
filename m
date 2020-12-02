Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00B7C2CC829
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 21:46:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389400AbgLBUnJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 15:43:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389377AbgLBUnI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Dec 2020 15:43:08 -0500
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B566C061A47
        for <linux-man@vger.kernel.org>; Wed,  2 Dec 2020 12:42:28 -0800 (PST)
Received: by mail-lj1-x242.google.com with SMTP id 142so5348789ljj.10
        for <linux-man@vger.kernel.org>; Wed, 02 Dec 2020 12:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=F3btiNSHm6jRc+pdBtMLFUAxRzWlf/wPyv3Pzid5Qtc=;
        b=Z11LEqV8wdrsHfKnZ1gN+6MxuQLN4JBrl/ZQBEaq6vQOuLOGiyyvqkeCcPCYRhQDIv
         ZPmJT1ekDNw917/6qDlUXjz9Xu/yQOcMPNWuaxXaYoEorXu9QNfEuCP35vSG8m9tWndO
         8uCAyKVBZS5tHpQHBWAexF8LHzVQcFWUxGxD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=F3btiNSHm6jRc+pdBtMLFUAxRzWlf/wPyv3Pzid5Qtc=;
        b=OdhOYnS9FFesLzP9MHRI/rtFj0+YFyKWsF4MGP4uHP33CZq1pyS20rlL//PTTkHptr
         jCeQkkXTR6R8jdoGMdco9zbR6pBlj0AwE1BqwOEFg1w3r9sqKapuTVx4vYhsutnX9oHV
         u4Y+R/JJlz58p+NhKaTzQSw05QkbVWhckKs/Rb5kwzEDE0JMdNPd5ITzsYBFmE9rtmJc
         eT1QpYGw75NGiJKAeYHffehnHjFy7MMiZTu0UES21DNqT1xtV3hDqACh8jKeD09yGfHV
         FIg8tecx5K1TFH2VEApVhUO+VaOP8lTSovCyCgsmxVJDVaAOtUcle2v02lF+tFV5JPd5
         qsBg==
X-Gm-Message-State: AOAM533wjQ9k/X6pANgDoQQrwHEHtaFfaL3qwh+Vpsa1md0xx4m7EXPz
        mobWU3DnINVDxIDOQaF+I4fWqqPJ/X0vUA==
X-Google-Smtp-Source: ABdhPJz2PymjolHONjQUP4Oq57/1BovWL6r96w7Mnw1iyGNlrxwpSVHV2V0Rl0pZ9fiREsFzPf5VVg==
X-Received: by 2002:a2e:8315:: with SMTP id a21mr1890600ljh.29.1606941745881;
        Wed, 02 Dec 2020 12:42:25 -0800 (PST)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com. [209.85.167.49])
        by smtp.gmail.com with ESMTPSA id q11sm809848lfm.241.2020.12.02.12.42.24
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 12:42:25 -0800 (PST)
Received: by mail-lf1-f49.google.com with SMTP id d20so6812368lfe.11
        for <linux-man@vger.kernel.org>; Wed, 02 Dec 2020 12:42:24 -0800 (PST)
X-Received: by 2002:a19:ed0f:: with SMTP id y15mr1907270lfy.352.1606941744281;
 Wed, 02 Dec 2020 12:42:24 -0800 (PST)
MIME-Version: 1.0
References: <e388f379-cd11-a5d2-db82-aa1aa518a582@redhat.com>
 <7027520f-7c79-087e-1d00-743bdefa1a1e@redhat.com> <20201202021633.GA1455219@iweiny-DESK2.sc.intel.com>
In-Reply-To: <20201202021633.GA1455219@iweiny-DESK2.sc.intel.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Wed, 2 Dec 2020 12:42:08 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjiU5Fq7aG0-H6QN1ZsK-U3Hw1K310N2z_eCPPDTKeysA@mail.gmail.com>
Message-ID: <CAHk-=wjiU5Fq7aG0-H6QN1ZsK-U3Hw1K310N2z_eCPPDTKeysA@mail.gmail.com>
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

On Tue, Dec 1, 2020 at 6:16 PM Ira Weiny <ira.weiny@intel.com> wrote:
>
> This will force a change to xfstests at a minimum.  And I do know of users who
> have been using this value.  But I have gotten inquires about using the feature
> so there are users out there.

If it's only a few tests that fail, I wouldn't worry about it, and the
tests should just be updated.

But if there are real user concerns, we may need to have some kind of
compat code. Because of the whole "no regressions" thing.

What would the typical failure cases be in practice?

            Linus
