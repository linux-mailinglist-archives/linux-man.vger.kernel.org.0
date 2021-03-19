Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E90AF342683
	for <lists+linux-man@lfdr.de>; Fri, 19 Mar 2021 20:53:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbhCSTxZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 15:53:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230090AbhCSTxP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 15:53:15 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 671C1C06175F
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 12:53:15 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id w203-20020a1c49d40000b029010c706d0642so8895412wma.0
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 12:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iTPbxVz9T3cNawzc32AFoud9AzkQkZjvL1JBQVkJlZ4=;
        b=A51QH0Ko5Pr7fkP48jaByx2RIb5Ys/lulNe2Ecuy1wBVqC3308yGkojCU/XyWLPL/5
         GR3G8eDyRaJyNbAKaxOXuV1Nvh1J5qyQVIISJtMj4Xfzn7KfFOfRSChC6zNjW6+HjNFF
         D/gKBHrZZJYlscrKFwEpOkZ6P4rEpUzNFMk4LD6rkiCafFHcGdkZTw3mqsDSIba46IqY
         +b7vv0DlAQwr/uOeuu+AnKelrS0wjqpDaoak2LSJBbkPZY00DtJ0ZN6QPUe0vCpfmRX9
         Iusb1hGB1FyBInvpFszW93RNeUMmW/aVcp3/ORnMJR+ckV7nrDI3ujgFi6R6J3aTmTFv
         tW+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iTPbxVz9T3cNawzc32AFoud9AzkQkZjvL1JBQVkJlZ4=;
        b=AJVYolFG36Y+B2RrW3wmT3/Hf7jIC99cacHyAVWaDgIeKaI+vAXV5fR5OpvS4w1hNO
         zLJF/Ob7rnhHrvOwzy2Flzwo+WrOau/rgYboYEztliFh4xiaGs/ahLNUEOwrSwrJulEz
         MbPrsu7696C0WR9/Hp4H5P3C68E2pzeFmuy0ovSEZoWipa3tws1/MYu1dramGvxQs+Jw
         LiJ8dWz5FuuACwMNqUJPclAnko+iT//7IKXIqPWLiUpZsZn8smZqumTxC/bUoh7pbtp2
         xj1+EQ/dX0RDsY9dxqD7/Ewrs8oMOriAspxHOkmxyKal9SJqhxlgMVDzho6K0Cv2lXvl
         oUuQ==
X-Gm-Message-State: AOAM533FX5UxwtvO75Sf2+FdQiFSYa7JDtBHbVFAyMyqSNzyRvIKZLH9
        96q6ApPmn6FCLaS6umsVhaU=
X-Google-Smtp-Source: ABdhPJx8wPch0X7X3nH7T4WMtnP9uxQBCz7f+d7ga3OVPgCRLTNS6G5GNX0lihHPdhKZPpjwizIUGA==
X-Received: by 2002:a7b:c357:: with SMTP id l23mr5078082wmj.152.1616183594162;
        Fri, 19 Mar 2021 12:53:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q19sm9913222wrg.80.2021.03.19.12.53.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 12:53:13 -0700 (PDT)
Subject: Re: netdevice.7 SIOCGIFFLAGS/SIOCSIFFLAGS
To:     Erik Flodin <erik@flodin.me>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Stefan Rompf <stefan@loplof.de>,
        "David S. Miller" <davem@davemloft.net>,
        Fredrik Arnerup <fredrik.arnerup@edgeware.tv>,
        John Dykstra <john.dykstra1@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Oliver Hartkopp <oliver.hartkopp@volkswagen.de>,
        Urs Thuermann <urs.thuermann@volkswagen.de>
References: <CAAMKmof+Y+qrro7Ohd9FSw1bf+-tLMPzaTba-tVniAMY0zwTOQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b0a534b3-9bdf-868e-1f28-8e32d31013a2@gmail.com>
Date:   Fri, 19 Mar 2021 20:53:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAAMKmof+Y+qrro7Ohd9FSw1bf+-tLMPzaTba-tVniAMY0zwTOQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Fredrik, John, David S., Steven, Oliver, Urs]

Hi,

On 3/17/21 3:12 PM, Erik Flodin wrote:
> Hi,
> 
> The documentation for SIOCGIFFLAGS/SIOCSIFFLAGS in netdevice.7 lists
> IFF_LOWER_UP, IFF_DORMANT and IFF_ECHO, but those can't be set in
> ifr_flags as it is only a short and the flags start at 1<<16.
> 
> See also https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=746e6ad23cd6fec2edce056e014a0eabeffa838c
> 

I don't know what's the history of that.
I researched a bit, and while the struct member is indeed a 'short' [1],
the flags were added to the kernel for some reason.
I added a few people to the thread that may know better what to do.Let's
see if they can comment.

Links to relevant commits:

<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=746e6ad23cd6fec2edce056e014a0eabeffa838c>
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b00055aacdb172c05067612278ba27265fcd05ce>
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cd05acfe65ed2cf2db683fa9a6adb8d35635263b>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=6ecda4d14604d250d385346f4fe9de707f281759>

Thanks,

Alex

[1]:

.../linux$ sed -n '/struct ifreq {/,/};/p' include/uapi/linux/if.h
struct ifreq {
#define IFHWADDRLEN	6
	union
	{
		char	ifrn_name[IFNAMSIZ];		/* if name, e.g. "en0" */
	} ifr_ifrn;
	
	union {
		struct	sockaddr ifru_addr;
		struct	sockaddr ifru_dstaddr;
		struct	sockaddr ifru_broadaddr;
		struct	sockaddr ifru_netmask;
		struct  sockaddr ifru_hwaddr;
		short	ifru_flags;
		int	ifru_ivalue;
		int	ifru_mtu;
		struct  ifmap ifru_map;
		char	ifru_slave[IFNAMSIZ];	/* Just fits the size */
		char	ifru_newname[IFNAMSIZ];
		void __user *	ifru_data;
		struct	if_settings ifru_settings;
	} ifr_ifru;
};
.../linux$ grep 'define\sifr_flags' include/uapi/linux/if.h
#define	ifr_flags	ifr_ifru.ifru_flags	/* flags		*/
.../linux$
	
-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
