Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A3831BE7BE
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2020 21:51:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726743AbgD2Tt4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 29 Apr 2020 15:49:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726481AbgD2Ttz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 29 Apr 2020 15:49:55 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CA86C03C1AE
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2020 12:49:55 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id g12so3387755wmh.3
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2020 12:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ls6wVRVjx1/a2ELfxdgNRkwcpaPU/N4K2nMG+wCtfVM=;
        b=EzQjhElKbTXm+LwxlGecFls04HBvE1kh5bzrm2uwkga3HOJH1peqUmvrYVTyojFhIE
         6X8NdHBSfFRSqvvk63wMttMkny10ux7LDcBxVPxzXdUj+9KHPmCtXD0atys3zdUAYyEd
         dZb2Rax1RejC3FFsEqRMYmJHtrAGZVofS0+u5aGmtvzCMVJeOdO9Q5jD4WuHK/+X5R+s
         IesYZAXDWUxlExpvN3g/4Z6FQXwyO8NT0qAi7QQ/dXlAVvXMwXOq+qhW6Pi6FdXepuS8
         xS8j5Ze7bqll8n7aNPZtHNxFrNpmBtZe1fqblnLa3/1CbokKrfLf9w9R3e1WxsFvqbsQ
         NlKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ls6wVRVjx1/a2ELfxdgNRkwcpaPU/N4K2nMG+wCtfVM=;
        b=itY7lun11Mz6xVYiXHlxqSoi9hyrGAMxQO1Vy9hUntK9dyXy69b63NUL10Hf1a5aDC
         OFhO5WR/iinCJ1z5vNNt4miDXJnCgcTdrKAk3azZudkMau5Pm8HOYkI1EKm+KJ56ocEN
         HP/JlUdQdkERsO+mLb+Qsgl2iBNPtQzrbDc4hXSCRS5JzmZ9YBCteecY7IynprwWVUMB
         /9l5J7sxAB5HZrl/JtqELK+G/CEy7H7TznW1ROUPeAB+hijuY2FNfbcagghlnjPyOE/l
         djJqN43h+De+PS9/9lELqOJhzoxUSTdR3gAzGY/QoGMY6myOc6qtocDBkw59awghXNRl
         7qfQ==
X-Gm-Message-State: AGi0PuYTvOwImtXPgDLvhG2tk6Yi62oFMpp7vVSdCtGVP06mlLwb6c8M
        /tKD2jvukv+3Q34qtCoQLlEEeqIR
X-Google-Smtp-Source: APiQypLNdvteGoNgMjHpQMUmYeY0XUrieKaAqfDjdO/SUH9y769JtLf7ajA3LhGFJiH+TwYE/aNqsQ==
X-Received: by 2002:a7b:cbc6:: with SMTP id n6mr5359983wmi.155.1588189793998;
        Wed, 29 Apr 2020 12:49:53 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 91sm462197wra.37.2020.04.29.12.49.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 12:49:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Missing magic number in statfs(2) et al
To:     David Adam <zanchey@ucc.gu.uwa.edu.au>
References: <alpine.DEB.2.22.394.2004292313100.1336@motsugo.ucc.gu.uwa.edu.au>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <13354325-5043-cfaa-e5b6-2eb950a96386@gmail.com>
Date:   Wed, 29 Apr 2020 21:49:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.22.394.2004292313100.1336@motsugo.ucc.gu.uwa.edu.au>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Gidday David,

On 4/29/20 5:19 PM, David Adam wrote:
> Hi,
> 
> The statfs(2) page is missing the magic number for SMB2:
> 
> SMB2_MAGIC_NUMBER 0xFE534D42
> 
> This is defined in fs/cifs/smb2glob.h .
> 
> Perhaps it could be added. It being so numerically close to 
> CIFS_MAGIC_NUMBER, coupled with `mount.cifs` producing an SMB2 mount (even 
> though `mount` still reports a CIFS type), has sent me a little wild over 
> the last few weeks.

Added!

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
