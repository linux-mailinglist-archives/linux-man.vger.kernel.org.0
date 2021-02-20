Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE3983205E5
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 16:25:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229766AbhBTPZB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 10:25:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229734AbhBTPY7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 10:24:59 -0500
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F8C1C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 07:24:18 -0800 (PST)
Received: by mail-il1-x136.google.com with SMTP id a16so7098518ilq.5
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 07:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=7MjJ1NMHOSVUoBVTRIrkezZEoSPQrQfVEzSk5W1w4QQ=;
        b=VIsrixeCK++LZe6T5/WHziWK3F5SdVPXzeUDSEFQ5l/r7/O0z2w/Oc2zo89ouY3y91
         iqWeRnPe47xxm7tQI/cDSS15SZfQoZwFqhT4BsNcUHMD2WE7M5Ol5MN+zvu5NKBfJE59
         hp+h8mF/h7/tZYBOJF5f9OsiLJ+YNJ1NcSLDX+pjkfPPhUEIKM/KkzvOr74XkaP13lAo
         YzmMxGB0QgBC/BN3AzUXZ32ky2lkbYuLm2AQfd5a/q8nl0ZAzKOwdFvmXCmJGZGTGCGb
         MU0Z23ptqQnxT/GLfZ1yCHEzJVxHeuKjfbM0j7VlcZcAoK3AyVxDlQelG+U4MvPSWqpy
         45Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7MjJ1NMHOSVUoBVTRIrkezZEoSPQrQfVEzSk5W1w4QQ=;
        b=cQJyt+oVG1T6oI77Eh/NjuU9trQHmUD07OQqKXVgjmRVTT0uoLcHS5wUKJC1vMOKWa
         kGc6Cl/aqZffuLg10vZOg3gHBnFZugQG2y9+1B4ABqztB1VkoLijaX5EflqJnwmSv8kx
         w+cypIgpvUd11oYynLGzwAEACcWbUm33VVAZvyAJFiFeTwuytxp7H8/J/zoGpJIo2H1V
         0l0dNNmewo4O77zlcz2YZzL8RTMeU6+bHyzBLh0ckqXxUdOojy34jjwA5ooJPPlWFHBq
         bWDu78wsRXxuUfZbCT+cVZBF2mdr84Zoo0xEu60c25rP3/1blzn5y6pMg0Yt6dRT7WQ+
         oCDA==
X-Gm-Message-State: AOAM530fehE7Vpqw8v4N86AOwpoWPeJT+iHSNvkFoEOQb1Cs+vKyCJsQ
        JJsNnCniQLtFsYAcDpFFXdCbjAlkacimg8b6WAQMqmfl7yE=
X-Google-Smtp-Source: ABdhPJxapBmVitv7kipa/S+xfVrAgz2jymTcCqUQEiD2KHeRmEHTbTbxGJbzfbImfzWUQpone4kM1pX3myREmPEgYBo=
X-Received: by 2002:a05:6e02:2142:: with SMTP id d2mr8257218ilv.249.1613834657613;
 Sat, 20 Feb 2021 07:24:17 -0800 (PST)
MIME-Version: 1.0
From:   Philipp Schuster <phip1611@gmail.com>
Date:   Sat, 20 Feb 2021 16:24:02 +0100
Message-ID: <CAKmF0pOMR9OMd4=ikHu31QGCVOWu10vvH4OzzgbUtPGGdbW05Q@mail.gmail.com>
Subject: Misleading documentation in Netlink(7) man page / doesn't match with Kernel
To:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

To whom it may concern,
I'd like to inform you about a bug in the Netlink(7) man page [0].

It describes struct nlmsgerr the following way:

struct nlmsgerr {
       int error;        /* Negative errno or 0 for acknowledgements */
       struct nlmsghdr msg;  /* Message header that caused the error */
};

but according to Kernel code [1] [2] [3] it actually should be:

struct nlmsgerr {
       int error;        /* Negative errno or 0 for acknowledgements */
       struct nlmsghdr msg;  /* Message header that caused the error */
       /*
        * followed by the message contents unless NETLINK_CAP_ACK was set
        * or the ACK indicates success (error == 0)
        * message length is aligned with NLMSG_ALIGN()
        */
       /*
        * followed by TLVs defined in enum nlmsgerr_attrs
        * if NETLINK_EXT_ACK was set
        */
};

This discrepancy led to errors implementing at least a Rust library which
made wrong assumptions about the returned value.


[0] https://man7.org/linux/man-pages/man7/netlink.7.html
[1] https://elixir.bootlin.com/linux/v5.11/source/include/uapi/linux/netlink.h#L112
[2] https://elixir.bootlin.com/linux/v5.11/source/net/netlink/af_netlink.c#L2416
[3] https://elixir.bootlin.com/linux/v5.11/source/net/netlink/af_netlink.c#L2440


Kind regards
--
Philipp Schuster
