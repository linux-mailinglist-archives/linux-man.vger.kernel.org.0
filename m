Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3C0141553F6
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2020 09:49:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726991AbgBGItd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Feb 2020 03:49:33 -0500
Received: from mail-pf1-f174.google.com ([209.85.210.174]:40203 "EHLO
        mail-pf1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726874AbgBGItd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Feb 2020 03:49:33 -0500
Received: by mail-pf1-f174.google.com with SMTP id q8so920858pfh.7
        for <linux-man@vger.kernel.org>; Fri, 07 Feb 2020 00:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=4jqRgpkVk6Df0+uLvQwKyyMCF8/hF7N8W8ytFU0ziP4=;
        b=SBnA6CrYOEQthUMqv7T6zfTgUwqy4kDyJhb5ooN36h1kWdeqVGHjLer3smLe+KT8SY
         5zPOt3WtQtpy6Tt0TlLpzdkHsOU2t1DJzZXV/1dQQNh97M+6ebt4L8zQDe6BePj01Ksv
         niw5PFqU9NL48wp6uoL5Qgell4AgLpMVxlsUKg+rSR8kvUnaXHojeODX/cdPCexcTrPL
         rscKKDStmK8kIVmEKXn+MEs7+CJRi2eEw8x6/jQbmkx3d1o141owHHDLMHC/1gsam4YU
         Vd5pQJIWQL2P6XdSVK93OFVnw0n71vZcHNTIcNIIdUoJRpPCKhKGIO8qzjHeconqjR3W
         iYMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=4jqRgpkVk6Df0+uLvQwKyyMCF8/hF7N8W8ytFU0ziP4=;
        b=TfkvAAjkx33YcxVaHfn0sgiZxLKx8dzlxhyqAYboXD4kg7QjunwrPTvawlAgwWghIR
         bZ6u1P+hrY4SYhUYI0C6UoAUnfvQvyf/X1ggUmWSvjegYxwnHVvod4KCXeqqzZznRnoj
         DZ5ISgRewdF8ATdoiBY83sYjhe5cXpcu2qM0CFKWVGzpi4mqzrEdrvTyf1qt2Nx52oMf
         oJprF1Nl0Z8fWy259wP2Qnr1l6vn5utfVLocGWjdDpeFLi3j2FxJqKjkGRVoHFYqIZ9X
         1S7xB2waULAt8Qbp0k3JXtqSUSOV5ZL7blqCPl9DEuzMICq09ggfO9eQcg4xGoEcTPpJ
         CwgA==
X-Gm-Message-State: APjAAAUp5bU6D+5gPTIzmNDFnuhwMn+BU+jMTOX+kD0S/5W1IpkMKZ2Z
        St8oj8c89Mi33+LcrzlJc5+VLgcuI2TTs6a3s/c=
X-Google-Smtp-Source: APXvYqy4YdLLCwl6blpv0tgmlSxeYnu4xhuMOOz9lFBpjykDgtG2s4bql7FA+nusHcs2qp+3BbqSa6YzmRyZqj+u6Dc=
X-Received: by 2002:a63:691:: with SMTP id 139mr8806485pgg.325.1581065371323;
 Fri, 07 Feb 2020 00:49:31 -0800 (PST)
MIME-Version: 1.0
From:   Matthew Burgess <matthew.s.burgess@gmail.com>
Date:   Fri, 7 Feb 2020 08:49:20 +0000
Message-ID: <CAMOczyyTJXaYS473-XpUbP9nCQLdVeCuJMydD7=4HR2W28FT5g@mail.gmail.com>
Subject: Missing word 'about' in man page for 'find'
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The third sentence of the description of the -P option in the man page
for 'find' starts:

"When find examines or prints information a file..."

But I think it should be:

"When find examines or prints information about a file..."

This error is present in the version of the man page at
http://man7.org/linux/man-pages/man1/find.1.html
