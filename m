Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8C95334B1C
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 23:12:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234120AbhCJWG5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 17:06:57 -0500
Received: from esa4.mentor.iphmx.com ([68.232.137.252]:44933 "EHLO
        esa4.mentor.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234187AbhCJWGb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 17:06:31 -0500
X-Greylist: delayed 426 seconds by postgrey-1.27 at vger.kernel.org; Wed, 10 Mar 2021 17:06:31 EST
IronPort-SDR: wQsZw4uoNClUzeyFI0/m4XFLEK269RY8gbrVmMAWDR+rGG8ljJXJoxYQNqAXzeXSvDQaZ7arFz
 RsanNZKpKkTZRI0ZrjVgGNFu9C2DuRw5rK0/VqyawJi5GiDH1vBYxmDXQLzpFzHwM009vxxTgn
 alTDMxItiujqklhxnahpDtjlsaR6mWFYYF5JvBjMj+l/LZmSxs7rc1GKPWjbvCyyCw40MnXeum
 NYp+1qDil+/ZBUrZ/PUitP3PEfUTlNOz/FpiMvzQAj91S3+5YO/62C3Y0tqj0CZo8r2QPYLs+e
 CSI=
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; 
   d="scan'208";a="59099491"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa4.mentor.iphmx.com with ESMTP; 10 Mar 2021 13:59:25 -0800
IronPort-SDR: yBZCBfPlaufY4VI9TMbxecAs7LKcgguLwISk5wTkdmFxfV1uCckvAMoAWSD4Zz1QsQAjFosBuo
 mKRPTfpDOXUQ+Jq62VF/kAfcRpkplUe6Fpe/gNoWrZMNWj4dEaVVnL1gjWaNCK+V6j7HUVtbQ8
 bI4dkoS3O6NfkrQGzAphRQtMR1fRPUCqm+Bn+I/9DVy38sJw4cyu2cma1ESC4V8guzTvcZIPog
 KRtWKXVuDCeu0COnDw/x1+tyLIO1JIdaE9aJZTFbm4ShDexndFjkNf24++lAN3Awm0Nbr9+GnJ
 9+Q=
Date:   Wed, 10 Mar 2021 21:59:18 +0000
From:   Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
CC:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Wainer dos Santos Moschetta <wainersm@linux.vnet.ibm.com>,
        linux-man <linux-man@vger.kernel.org>,
        <libc-alpha@sourceware.org>
Subject: Re: strfromd.3: restrict? C99?
In-Reply-To: <befb1e8d-42e5-05bc-4d88-ee7f92e9e692@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2103102157040.797684@digraph.polyomino.org.uk>
References: <befb1e8d-42e5-05bc-4d88-ee7f92e9e692@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-09.mgc.mentorg.com (139.181.222.9) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 10 Mar 2021, Alejandro Colomar (man-pages) via Libc-alpha wrote:

> And the manual page states that it conforms to some standards, but I haven't
> found it in C99 (neither in C11 nor C18) nor in POSIX:

The strfrom functions are in TS 18661-1, and draft C23 which integrated 
all of TS 18661-1 and -2 and parts of -4 (-3 will be added in an Annex).  
They use restrict in both places.  So it would be appropriate to use 
__restrict in the glibc header (as documentation, qualifiers on function 
parameter types in a declaration that isn't a definition don't have any 
semantic effect).

-- 
Joseph S. Myers
joseph@codesourcery.com
