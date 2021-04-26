Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D750D36B80B
	for <lists+linux-man@lfdr.de>; Mon, 26 Apr 2021 19:26:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235298AbhDZR1G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Apr 2021 13:27:06 -0400
Received: from esa4.mentor.iphmx.com ([68.232.137.252]:62824 "EHLO
        esa4.mentor.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235241AbhDZR1G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Apr 2021 13:27:06 -0400
X-Greylist: delayed 430 seconds by postgrey-1.27 at vger.kernel.org; Mon, 26 Apr 2021 13:27:06 EDT
IronPort-SDR: IWuO6eyjHRki6A3pxfdsGIsVmsPKnqlifC8wplSzx/+qP5I3zxq4uAwRWcSo7g9CTbV5hdofFE
 aTcO2AkC26BF0NYxz/Y8XQoeCD3BhdQzd5CSSxj+gZ8FYWwgmXouhhQzyc/C0g/R/jHCyjjDGj
 QCzEQAMwFIaDp5Ec1KiD9IC9H/eR79YBUSS5LJ9O9KvrfmQpzUYVZGbHtwC6iR1FzgSUeueu+K
 o0faHhCdDbQoDR73sBVyge7xzecRTeUPTFJj+i8xrkVYwLN8vMIuoZg8oQ6JN6GEJ7uqhsYOQC
 MPM=
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; 
   d="scan'208";a="60674745"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa4.mentor.iphmx.com with ESMTP; 26 Apr 2021 09:19:13 -0800
IronPort-SDR: hVNETrJmdsECZoHvqs0DjVbjjB4D+FVH8Iv6VkjYfdaIaO8I/fMfTeTxmZEaYWZK0+0oZOslIy
 rkFFwcx5JLTZjNDafr0h5Xm3ROGNwoPTkQWvFFSOnsmAxgTzeUq8I7qGK6va6YNLzIEIzpPEuD
 NHU/lnukVsVThxiM3eWNlBTFE5KOo2TrqOiDyrgklcDyyTty4gAbsGd0jnHUYhllbOOAayZuGx
 181tpRt3FgW8A46M5RsNr3LEMnyOgk1XGLT1oaxWdpjoJsROj7yUWR9rSaCN5q2FxnSw3eecrf
 OOU=
Date:   Mon, 26 Apr 2021 17:19:07 +0000
From:   Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     <mtk.manpages@gmail.com>, <linux-man@vger.kernel.org>,
        <gcc-patches@gcc.gnu.org>, <libc-alpha@sourceware.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [RFC] bpf.2: Use standard types and attributes
In-Reply-To: <20210423230609.13519-1-alx.manpages@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104261717120.641239@digraph.polyomino.org.uk>
References: <20210423230609.13519-1-alx.manpages@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, 24 Apr 2021, Alejandro Colomar via Libc-alpha wrote:

> Some pages also document attributes, using GNU syntax
> '__attribute__((xxx))'.  Update those to use the shorter and more
> portable C2x syntax, which hasn't been standardized yet, but is
> already implemented in GCC, and available through either --std=c2x
> or any of the --std=gnu... options.

If you mention alignment in the manpage at all, the same reasoning would 
say you should use _Alignas(8) not [[gnu::aligned(8)]], in any context 
where _Alignas is valid.

-- 
Joseph S. Myers
joseph@codesourcery.com
