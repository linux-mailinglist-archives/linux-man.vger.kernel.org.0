Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCAAA6DC07B
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 16:55:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbjDIOzm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 10:55:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbjDIOzl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 10:55:41 -0400
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AD4F3A87
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 07:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=p6W3HWanQ1PrCiCZ4gICK0Q+Lu/BBUj93XsdawUVXCY=; b=mX/K63EKXsRxKv6/gqrnQQfra7
        fR6YSn+Ocl0HTQoS2wf6V47Q+uVopgsEj/4wzcOMxIBOVT5xKfmFterTsI9LSWNB0Kw9v3GqOTitX
        BP3LTbHT2td3FXVkj6TUAHjGikZICp5X1XrO/uSZgP02u+MkUZwPLh5PnoMxQac3V6vln30zTcg5H
        t2ZebgJDkUFdb/LcjDEusCg7LHxNZugiVCjZk7IlsLDDQpQB9ExtNzq9RpYAu9utu+S2H5pWMB1fF
        Y/cs+LycTLHeF3GenlM9FA/veYRq4uRDZHMNlhRAR7MaSDUceMeZGuiL+ZzyD5KpyOaAtL7xeA0IU
        dM23JMrg==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1plWS9-00Eb3s-3M; Sun, 09 Apr 2023 14:55:37 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
        by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1plWS6-00GXDa-65; Sun, 09 Apr 2023 15:55:34 +0100
Date:   Sun, 9 Apr 2023 15:55:33 +0100
From:   Colin Watson <cjwatson@debian.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     man-db-devel@nongnu.org, linux-man <linux-man@vger.kernel.org>
Subject: Re: man -K finds repeated entries for each symlink page
Message-ID: <ZDLR5SrIPXstHgBM@riva.ucam.org>
References: <a93419ac-b06a-41d3-7c82-339f1773ee76@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a93419ac-b06a-41d3-7c82-339f1773ee76@gmail.com>
X-Debian-User: cjwatson
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_NONE,UNPARSEABLE_RELAY autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Apr 09, 2023 at 03:58:28PM +0200, Alejandro Colomar wrote:
> $ man -Kaw RLIMIT_NOFILE | sort | uniq -c
>       3 /opt/local/man/share/man/man2/dup.2
>       2 /opt/local/man/share/man/man2/fcntl.2
>       5 /opt/local/man/share/man/man2/getrlimit.2
>       3 /opt/local/man/share/man/man2/open.2
>       1 /opt/local/man/share/man/man2/pidfd_getfd.2
>       1 /opt/local/man/share/man/man2/pidfd_open.2
>       2 /opt/local/man/share/man/man2/poll.2
>       1 /opt/local/man/share/man/man2/seccomp_unotify.2
>       4 /opt/local/man/share/man/man2/select.2
> 
> Those numbers coincide with 1+ the number of symlinks for each of the
> pages.  For example, see select.2:

Thanks for the report.  Fixed by this commit:

  https://gitlab.com/man-db/man-db/-/commit/7ef30573a7023eb78bf70a34edaa4e3906531993

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]
