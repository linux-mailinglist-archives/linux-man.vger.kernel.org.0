Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BDE41B2605
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 14:29:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728772AbgDUM3q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 08:29:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726018AbgDUM3p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 08:29:45 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64DCDC061A10
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 05:29:44 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k11so16279831wrp.5
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 05:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ulE+I53AWsU0PoH7lClcYDzuV+1Y2bscWuvDTk17eJE=;
        b=PDJsinoEz8VdE+7F/ZUW3PcpOSLn8qIf/BrIqvyX6+kGQ76aDmiiXygtaoodsxzK93
         uZUmLw1HGq+4Y2F/jDAGPiVj4Son2Kx+TUdCU+dUf5rb+vnnNmQ917kGRf1T46RtKjix
         zoME5w9blJDpQQbP8jYXrKim4yzdgBhdLOBuYUz6LAO+fciNuQXhn7hrAS9Y4naDxdiS
         KMFTwPVV4Hz64f7xFHA2Vh4AYDrpmhx5ENCCIFFk5wmGupSOfD6dD7eKPCoXncJw6Pl3
         ya+IqRhmPEeH1jrIYg3oAk082IWTpOB+OoCwrQpIpNW1AMZngtUOpogV9NvlsyPS9JYB
         Pa9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ulE+I53AWsU0PoH7lClcYDzuV+1Y2bscWuvDTk17eJE=;
        b=OIMiSNNMgY7xoS7krksJHrQiKJk/9PJY12g4zLa5SEBZzNq5CeMsy0XmOeGCDOZMxW
         gt+HxYJOqbBesLipeSZWCrOqjd8RKv55cs2kYxV115l4L7fthtXaQZ+9QzY1vUpGPPrm
         Y5bnjNJYqCm6l8jt780d9DoI7+xMA/eoSoCYVQ8vjBKcH2ZC+KwB+UDOQomezeT0uonk
         vj86RQyYN1vU9MY6Zk0H66u2g4m+DWCYHt6Yksfuxi5BAyXDwkjU077pO34CorUJO9x5
         aa92QZCabRSY4ttv5fUZUbsL7Qa3PWPuJN7S+aM5w/bRqcwp4UebcsZB/CbLTYtUbNBZ
         8SuQ==
X-Gm-Message-State: AGi0PuYohKvlVDTKFP3Qi+7VYqoIJue5HRUv2VPJAIQpFztLx2kW6rut
        sukp4givtZM7EogjFVfHNduAtVBc
X-Google-Smtp-Source: APiQypKkidAmIq/RYwod+JwKDe0XFCbdBPGxBVt1V56jCbW5y+WhJFyVVsaOzQ/lnsPoSYYujkYzvQ==
X-Received: by 2002:a5d:470a:: with SMTP id y10mr23446627wrq.63.1587472182880;
        Tue, 21 Apr 2020 05:29:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y5sm3853490wru.15.2020.04.21.05.29.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 05:29:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: A problem with prctl(2) and proc(5)
To:     Eric Hopper <hopper@omnifarious.org>
References: <CAJWcbJEJDZS34g8v3dG-RAe=W0T-9ti_LUQ=GM9LJiEcetVphA@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <93a73a96-9a6e-f9ab-cf55-dac3b0a89e8c@gmail.com>
Date:   Tue, 21 Apr 2020 14:29:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAJWcbJEJDZS34g8v3dG-RAe=W0T-9ti_LUQ=GM9LJiEcetVphA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eric,

On 10/24/17 12:26 AM, Eric Hopper wrote:
> These two manual pages both imply that a setuid process can call
> prctl(PR_SET_DUMPABLE, 1, 0, 0, 0); to set this flag back to 1 and
> restore the ownership of /proc files back to being the real user id of
> the process.  This is not exactly true.
> 
> Empirical testing reveals that this flag is ignored in favor of the
> value in /proc/sys/fs/suid_dumpable if either the real group or user id
> fail to match the effective group or user id. You can use prctl to set
> it to 1, and then prctl(PR_GET_DUMPABLE, 0, 0, 0, 0); to fetch it, and
> it will report as '1', but the ownership of files in /proc/self will
> remain as root:root until the effective and real ids match.
> 
> This should be mentioned in the manual as it prescribes a very specific
> sequence of events that must happen to restore the ownership of these
> files that the current manual does not make clear.

I believe that you've misapprehended things slightly. I think the
correct summary is this:

1. If the process "dumpable" attribute is not 1, the files in
   /proc/PID are owned by root:root. If the dumpable attribute is 1,
   then the ownership is <process-eUID>:<process-eGID>. (And in
   a set-UID-root program, <process-eUID> is of course "root".)

2. As described in prctl(2), various process credential changes
   may cause the value of the process's dumpable attribute to
   be reset to the value in /proc/sys/fs/suid_dumpable (which
   typically has the value 0).

So, if I understand the scenario you are describing correctly:

(a) We run a set-UID program. Consequently, the process's dumpable
    flag is reset to the value in /proc/sys/fs/suid_dumpable
    (probably 0) and consequently the ownership of the /proc/PID
    files changes to root:root.
(b) [Hypothetically] the process uses prctl(2) to reset the
    dumpable flag to 1. This causes the ownership of the
    /proc/PID files to reset to <process-eUID>:<process-eGID>.
(c) The process drops its effective UID back to the same value as
    the real UID, which brings us back to the same state as in (a).
(d) The process uses prctl(2) to reset the dumpable flag to 1.
    This would again cause the ownership of the /proc/PID files
    to reset to <process-eUID>:<process-eGID>.

Rule 1 above is I think quite clearly captured in proc(5):

       The  files  inside  each /proc/[pid] directory are normally
       owned by the effective user and effective group ID  of  the
       process.   However, as a security measure, the ownership is
       made root:root if the process's "dumpable" attribute is set
       to a value other than 1.

But people trip up over point (c), I think. The question is how
to better alert them, so that they don't trip up. As a step in
that direction, I added some text in proc(5):

       Resetting  the "dumpable" attribute to 1 reverts the owner‐
       ship of the /proc/[pid]/* files to the process's  effective
x      UID  and  GID.  Note, however, that if the effective UID or
x      GID is subsequently modified, then the "dumpable" attribute
x      may  be reset, as described in prctl(2).  Therefore, it may
x      be desirable to reset the "dumpable" attribute after making
x      any desired changes to the process's effective UID or GID.

If you have specific suggestions about other changes that could
be made to prevent the misunderstanding that you had, please
let me know.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
