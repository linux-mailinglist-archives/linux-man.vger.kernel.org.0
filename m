Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86ADA27170B
	for <lists+linux-man@lfdr.de>; Sun, 20 Sep 2020 20:29:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726187AbgITS3P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Sep 2020 14:29:15 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:40620 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726055AbgITS3P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Sep 2020 14:29:15 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 8FDF81600DB;
        Sun, 20 Sep 2020 11:29:14 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id whn-uzhbhxO8; Sun, 20 Sep 2020 11:29:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id E6B2A160066;
        Sun, 20 Sep 2020 11:29:13 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id n5SqUslpvtuV; Sun, 20 Sep 2020 11:29:13 -0700 (PDT)
Received: from [192.168.1.9] (cpe-75-82-69-226.socal.res.rr.com [75.82.69.226])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id B908A1600DB;
        Sun, 20 Sep 2020 11:29:13 -0700 (PDT)
Subject: Re: [PATCH v2] system_data_types.7: Specify the length modifiers for
 the variables that have them
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, fweimer@redhat.com
References: <20200920181407.77667-1-colomar.6.4.3@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Autocrypt: addr=eggert@cs.ucla.edu; prefer-encrypt=mutual; keydata=
 LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptUUlOQkV5QWNtUUJFQURB
 QXlIMnhvVHU3cHBHNUQzYThGTVpFb243NGRDdmM0K3ExWEEySjJ0QnkycHdhVHFmCmhweHhk
 R0E5Smo1MFVKM1BENGJTVUVnTjh0TFowc2FuNDdsNVhUQUZMaTI0NTZjaVNsNW04c0thSGxH
 ZHQ5WG0KQUF0bVhxZVpWSVlYL1VGUzk2ZkR6ZjR4aEVtbS95N0xiWUVQUWRVZHh1NDd4QTVL
 aFRZcDVibHRGM1dZRHoxWQpnZDdneDA3QXV3cDdpdzdlTnZub0RUQWxLQWw4S1lEWnpiRE5D
 UUdFYnBZM2VmWkl2UGRlSStGV1FONFcra2doCnkrUDZhdTZQcklJaFlyYWV1YTdYRGRiMkxT
 MWVuM1NzbUUzUWpxZlJxSS9BMnVlOEpNd3N2WGUvV0szOEV6czYKeDc0aVRhcUkzQUZINmls
 QWhEcXBNbmQvbXNTRVNORnQ3NkRpTzFaS1FNcjlhbVZQa25qZlBtSklTcWRoZ0IxRApsRWR3
 MzRzUk9mNlY4bVp3MHhmcVQ2UEtFNDZMY0ZlZnpzMGtiZzRHT1JmOHZqRzJTZjF0azVlVThN
 Qml5Ti9iClowM2JLTmpOWU1wT0REUVF3dVA4NGtZTGtYMndCeHhNQWhCeHdiRFZadWR6eERa
 SjFDMlZYdWpDT0pWeHEya2wKakJNOUVUWXVVR3FkNzVBVzJMWHJMdzYrTXVJc0hGQVlBZ1Jy
 NytLY3dEZ0JBZndoUEJZWDM0blNTaUhsbUxDKwpLYUhMZUNMRjVaSTJ2S20zSEVlQ1R0bE9n
 N3haRU9OZ3d6TCtmZEtvK0Q2U29DOFJSeEpLczhhM3NWZkk0dDZDCm5yUXp2SmJCbjZneGRn
 Q3U1aTI5SjFRQ1lyQ1l2cWwyVXlGUEFLK2RvOTkvMWpPWFQ0bTI4MzZqMXdBUkFRQUIKdENC
 UVlYVnNJRVZuWjJWeWRDQThaV2RuWlhKMFFHTnpMblZqYkdFdVpXUjFQb2tDVlFRVEFRZ0FQ
 d0liQXdZTApDUWdIQXdJR0ZRZ0NDUW9MQkJZQ0F3RUNIZ0VDRjRBV0lRUitONUtwMkt6MzFq
 TzhGWWp0bCtrT1lxcCtOQVVDClh5Vzlsd1VKRks0THN3QUtDUkR0bCtrT1lxcCtOS05WRC85
 SE1zSTE2MDZuMFV1VFhId0lUc3lPakFJOVNET1QKK0MzRFV2NnFsTTVCSDJuV0FNVGlJaXlB
 NXVnbHNKdjkzb2kydk50RmYvUS9tLzFjblpXZ25WbkV4a3lMSTRFTgpTZDF1QnZyMC9sQ1Nk
 UGxQME1nNkdXU3BYTXUreDB2ZFQwQWFaTk9URTBGblB1b2xkYzNYRDc2QzJxZzhzWC9pCmF4
 WFRLSHk5UCtCbEFxL0NzNy9weERRMEV6U24wVVNaMkMwbDV2djRQTXBBL3BpY25TNks2MDlK
 dkRHYU9SbXcKWmVYSVpxUU5aVitaUXMrVVl0Vm9ndURUcWJ5M0lVWTFJOEJsWEhScHRhajlB
 TW40VW9oL0NxcFFsVm9qb3lXbApIcWFGbm5KQktlRjBodko5U0F5YWx3dXpBakc3dlFXMDdN
 WW5jYU9GbTB3b2lLYmc1SkxPOEY0U0JUSWt1TzBECkNmOW5MQWF5NlZzQjRyendkRWZSd2pQ
 TFlBbjdNUjNmdkhDRXpmcmtsZFRyYWlCTzFUMGllREs4MEk3c0xmNnAKTWVDWUkxOXBVbHgw
 L05STUdDZGRpRklRZGZ0aEtXWEdSUzVMQXM4andCZjhINkc1UFdpblByRUlhb21JUDIxaQp2
 dWhRRDA3YllxOUlpSWRlbGpqVWRIY0dJMGkvQjRNNTZaYWE4RmYzOGluaU9sckRZQ21ZV1I0
 ZENXWml1UWVaCjNPZ3FlUXM5YTZqVHZnZERHVm1SVnFZK2p6azhQbGFIZmNvazhST2hGY0hL
 a2NmaHVCaEwyNWhsUklzaFJET0UKc2tYcUt3bnpyYnFnYTNHWFpYZnNYQW9GYnpOaExkTHY5
 QStMSkFZU2tYUDYvNXFkVHBFTFZHb3N5SDg4NFZkYgpCcGtHSTA0b1lWcXVsYmtDRFFSTWdI
 SmtBUkFBcG9YcnZ4UDNESWZqQ05PdFhVL1Bkd01TaEtkWC9SbFNzNVBmCnVuVjF3YktQOGhl
 clhIcnZRZEZWcUVDYVRTeG1saHpiazhYMFBrWTlnY1ZhVTJPNDlUM3FzT2QxY0hlRjUyWUYK
 R0V0MExoc0JlTWpnTlg1dVoxVjc2cjhneWVWbEZwV1diMFNJd0pVQkhyRFhleEY2N3VwZVJi
 MnZkSEJqWUROZQp5U24rMEI3Z0ZFcXZWbVp1K0xhZHVkRHA2a1FMamF0RnZIUUhVU0dOc2hC
 bmtrY2FUYmlJOVBzdDBHQ2MyYWl6Cm5CaVBQQTJXUXhBUGxQUmgzT0dUc241VEhBRG1ianFZ
 NkZFTUxhc1ZYOERTQ2JsTXZMd05lTy84U3h6aUJpZGgKcUxwSkNxZFFSV0hrdTVYeGdJa0dl
 S096NU9MRHZYSFdKeWFmckVZamprUzZBazZCNXo2c3ZLbGlDbFduakhRYwpqbFB6eW9GRmdL
 VEVmY3FEeENqNFJZMEQwRGd0RkQwTmZ5ZU9pZHJTQi9TelRlMmh3cnlRRTNycFNpcW8rMGNH
 CmR6aDR5QUhLWUorVXJYWjRwOTNaaGpHZktEMXhsck5ZRGxXeVc5UEdtYnZxRnVEbWlJQVFm
 OVdEL3d6RWZJQ2MKK0YrdURESSt1WWtSeFVGcDkyeWttZGhERUZnMXlqWXNVOGlHVTY5YUh5
 dmhxMzZ6NHpjdHZicWhSTnpPV0IxYgpWSi9kSU1EdnNFeEdjWFFWRElUN3NETlh2MHdFM2pL
 U0twcDdOREcxb1hVWEwrMitTRjk5S2p5NzUzQWJRU0FtCkg2MTdmeUJOd2hKV3ZRWWcrbVV2
 UHBpR090c2VzOUVYVUkzbFM0djBNRWFQRzQzZmxFczFVUisxcnBGUVdWSG8KMXkxT08rc0FF
 UUVBQVlrQ1BBUVlBUWdBSmdJYkRCWWhCSDQza3FuWXJQZldNN3dWaU8yWDZRNWlxbjQwQlFK
 ZgpKYjJ6QlFrVXJndlBBQW9KRU8yWDZRNWlxbjQwY25NUC8xN0NnVWtYVDlhSUpyaVBNOHdi
 Y2VZcmNsNytiZFlFCmY3OVNsd1NiYkhON1I0Q29JSkZPbE45Uy8zNHR5cEdWWXZwZ21DSkRZ
 RlRCeHlQTzkyaU1YRGdBNCtjV0h6dDUKVDFhWU85aHNLaGg3dkR0Sys2UHJvWkdjKzA4Z1VU
 WEhoYjk3aE1NUWhrbkpsbmZqcFNFQzllbTkwNkZVK0k5MwpUMWZUR3VwbkJhM2FXY0s4ak0w
 SmFCR2J5MmhHMVMzb2xhRExTVHRCSU5OQlltdnVXUjlNS09oaHFEcmxrNWN3CkZESkxoNU5y
 WHRlRVkwOFdBemNMekczcGtyWFBIa0ZlTVF0ZnFrMGpMZEdHdkdDM05DSWtxWXJkTGhpUnZH
 cHIKdTM4QzI2UkVuNWY0STB2R0UzVmZJWEhlOFRNQ05tUXV0MU50TXVVbXBESXkxYUx4R3p1
 cHRVaG5PSk4vL3IrVgpqRFBvaTNMT3lTTllwaHFlL2RNdWJzZlVyNm9oUDQxbUtGODFGdXdJ
 NGFtcUp0cnFJTDJ5cWF4M2EwcWxmd0N4ClhmdGllcUpjdWVrWCtlQ1BEQ0tyWU1YUjBGWWd3
 cEcySVRaVUd0ckVqRVNsRTZEc2N4NzM0SEtkcjVPUklvY0wKVVVLRU9HZWlVNkRHaEdGZGI1
 VHd1MFNuK3UxbVVQRE4wTSsrQ2RNdkNsSUU4a2xvNEc5MUVPSW11MVVwYjh4YwpPUFF3eGgx
 andxU3JVNVF3b05tU1llZ1FTSExwSVV1ckZ6MWlRVWgxdnBQWHpLaW5rV0VxdjRJcUExY2lM
 K0x5CnlTdUxrcDdNc0pwVlJNYldKQ05XT09TYmFING9EQko1ZEhNR2MzNXg1bW9zQ2s5MFBY
 a251RkREc1lIZkRvNXMKbWY5bG82WVh4N045Cj0zTGFJCi0tLS0tRU5EIFBHUCBQVUJMSUMg
 S0VZIEJMT0NLLS0tLS0K
Organization: UCLA Computer Science Department
Message-ID: <467c863d-1b2c-2aa6-aa7a-90fd109fd6ed@cs.ucla.edu>
Date:   Sun, 20 Sep 2020 11:29:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200920181407.77667-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, that looks good.
